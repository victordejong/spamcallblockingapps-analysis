package com.callapp.contacts.activity.contact.list.keypad;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.telecom.Call;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupMenu;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.chooseContact.ChooseSingleNumberFromContactsActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.interfaces.CallEventListener;
import com.callapp.contacts.activity.settings.Language;
import com.callapp.contacts.activity.settings.SpeedDialActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.InCallToneManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogEntry;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer.class */
public class TwelveKeyDialer implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener, PopupMenu.OnMenuItemClickListener, CallStateListener {

    /* renamed from: e */
    private static final String[] f22685e = {"", "ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ", "+"};

    /* renamed from: a */
    boolean f22686a;

    /* renamed from: b */
    Language f22687b;

    /* renamed from: g */
    private boolean f22690g;

    /* renamed from: h */
    private boolean f22691h;

    /* renamed from: i */
    private View f22692i;

    /* renamed from: k */
    private ImageView f22694k;

    /* renamed from: l */
    private FilterListener f22695l;

    /* renamed from: m */
    private KeypadRequestsEvents f22696m;

    /* renamed from: n */
    private EditText f22697n;

    /* renamed from: p */
    private ImageView f22699p;

    /* renamed from: q */
    private ImageView f22700q;

    /* renamed from: r */
    private TwelveKeyDialerButton[] f22701r;

    /* renamed from: s */
    private View f22702s;

    /* renamed from: t */
    private final boolean f22703t;

    /* renamed from: u */
    private Activity f22704u;

    /* renamed from: v */
    private int f22705v;

    /* renamed from: w */
    private boolean f22706w;

    /* renamed from: x */
    private CallData f22707x;

    /* renamed from: y */
    private TwelveKeyDialerButton f22708y;

    /* renamed from: z */
    private TwelveKeyDialerButton f22709z;

    /* renamed from: f */
    private final Object f22689f = new Object();

    /* renamed from: j */
    private SparseArray<SpeedDialActivity.SpeedDialData> f22693j = new SparseArray<>(8);

    /* renamed from: o */
    private final AudioManager f22698o = (AudioManager) Singletons.m28493a("audio");

    /* renamed from: c */
    InCallToneManager f22688c = new InCallToneManager();

    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3.class */
    public class C65503 implements ActionDoneListener {
        C65503() {
            TwelveKeyDialer.this = r4;
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27472a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.3.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.f22697n.setText("");
                            }
                        });
                        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f23108b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27471a(boolean z) {
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$4.class */
    public class C65534 implements ActionDoneListener {
        C65534() {
            TwelveKeyDialer.this = r4;
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27472a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.4.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.f22697n.setText("");
                            }
                        });
                        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f23108b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27471a(boolean z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$5 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5.class */
    public class C65565 implements ActionDoneListener {
        C65565() {
            TwelveKeyDialer.this = r4;
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27472a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.5.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.5.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.f22697n.setText("");
                            }
                        });
                        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f23108b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27471a(boolean z) {
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$7 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$7.class */
    public class C65647 implements ActionDoneListener {
        C65647() {
            TwelveKeyDialer.this = r4;
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27472a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.7.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.7.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.f22697n.setText("");
                            }
                        });
                        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f23108b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27471a(boolean z) {
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$8 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$8.class */
    public static /* synthetic */ class C65678 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22732a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[Language.values().length];
            f22732a = iArr;
            try {
                iArr[Language.RUSSIAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22732a[Language.UKRAINIAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22732a[Language.HEBREW.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f22732a[Language.GREEK.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f22732a[Language.ARABIC.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f22732a[Language.THAI.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f22732a[Language.KOREAN.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f22732a[Language.BULGARIAN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener.class */
    public interface FilterListener {
        /* renamed from: a */
        void mo30454a(String str, int i, int i2, int i3, boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents.class */
    public interface KeypadRequestsEvents {
        /* renamed from: a */
        void mo30453a();
    }

    public TwelveKeyDialer(Activity activity, View view, boolean z, boolean z2) {
        this.f22691h = z;
        this.f22702s = view;
        this.f22703t = z2;
        m30472b();
        this.f22704u = activity;
        EditText editText = (EditText) view.findViewById(2131362597);
        this.f22697n = editText;
        editText.setTextIsSelectable(true);
        this.f22692i = view.findViewById(2131362589);
        ImageView imageView = (ImageView) view.findViewById(2131362571);
        this.f22694k = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f22694k.setOnClickListener(this);
        View findViewById = view.findViewById(2131362591);
        if (z2) {
            findViewById.setVisibility(4);
        } else {
            findViewById.setVisibility(0);
        }
        setupButtons(view);
        this.f22697n.addTextChangedListener(new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                boolean z3 = i2 != i3 || TwelveKeyDialer.this.f22690g;
                if (TwelveKeyDialer.this.f22695l != null) {
                    TwelveKeyDialer.this.f22695l.mo30454a(TwelveKeyDialer.this.f22697n.getText().toString(), i, i2, i3, z3);
                    TwelveKeyDialer.this.f22690g = false;
                }
                boolean m26059a = StringUtils.m26059a(charSequence);
                if (m26059a) {
                    TwelveKeyDialer.this.f22706w = false;
                }
                TwelveKeyDialer.this.setButtonsVisibility(m26059a);
            }
        });
        PhoneStateManager.get().addListener(this);
    }

    /* renamed from: a */
    private static float m30479a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(2131951892, new int[]{16842901});
        float dimension = obtainStyledAttributes.getDimension(0, 12.0f);
        obtainStyledAttributes.recycle();
        return Activities.m27660b(dimension);
    }

    /* renamed from: a */
    private static String m30475a(String str) {
        return str.substring(0, str.length() - 1);
    }

    /* renamed from: a */
    public /* synthetic */ void m30474a(String str, Activity activity) {
        PhoneManager.m28248a(activity, PhoneManager.get().m28239a(str), 0L, null, Constants.CONTACT_LIST, "Dialer dial", true, new C65534());
    }

    /* renamed from: a */
    private boolean m30480a(int i) {
        if (this.f22697n.getText().length() > 1) {
            return false;
        }
        m30471b(i);
        return true;
    }

    /* renamed from: a */
    private static boolean m30478a(Context context, String str) {
        if (StringUtils.m26042b(str, "*#06#")) {
            PopupManager.get().m28209a(context, new DeviceInformationDialog());
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private void m30471b(final int i) {
        AnalyticsManager.get().m28449a(Constants.KEYPAD, "Speed dial", Constants.CLICK);
        new Task() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final String phoneNumber;
                final int i2 = (TwelveKeyDialer.this.f22705v * 10) + i;
                synchronized (TwelveKeyDialer.this.f22689f) {
                    phoneNumber = ((SpeedDialActivity.SpeedDialData) TwelveKeyDialer.this.f22693j.get(i2)).getPhoneNumber();
                }
                if (StringUtils.m26059a((CharSequence) phoneNumber)) {
                    PopupManager.get().m28209a(TwelveKeyDialer.this.f22704u, new DialogSimpleMessage(Activities.getString(2131886215), Activities.getString(2131886214), Activities.getString(2131887338), Activities.getString(2131886505), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            Activities.m27680a(activity, ChooseSingleNumberFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.1.1
                                @Override // com.callapp.contacts.manager.popup.ActivityResult
                                public void onActivityResult(Activity activity2, int i3, int i4, Intent intent) {
                                    if (i4 != -1 || intent == null) {
                                        return;
                                    }
                                    Bundle extras = intent.getExtras();
                                    Pair pair = new Pair(extras.getString(Constants.EXTRA_PHONE_NUMBER), extras.getString(ContactDetailsActivity.EXTRA_FULL_NAME));
                                    if (!StringUtils.m26045b((CharSequence) pair.first) || !StringUtils.m26045b((CharSequence) pair.second) || i2 == 0) {
                                        FeedbackManager.get().m28669a(Activities.getString(2131887745), (Integer) null);
                                        return;
                                    }
                                    SpeedDialActivity.SpeedDialData speedDialData = new SpeedDialActivity.SpeedDialData(i2, (String) pair.second, (String) pair.first);
                                    List<SpeedDialActivity.SpeedDialData> m29591a = SpeedDialActivity.m29591a(Prefs.f26228aE.get());
                                    m29591a.set(m29591a.indexOf(speedDialData), speedDialData);
                                    SpeedDialActivity.m29592a(m29591a);
                                }
                            });
                        }
                    }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    }));
                } else {
                    TwelveKeyDialer.this.f22704u.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.3
                        @Override // java.lang.Runnable
                        public void run() {
                            TwelveKeyDialer.this.m30473a(true);
                            Phone m28239a = PhoneManager.get().m28239a(phoneNumber);
                            PhoneManager.m28248a(CallAppApplication.get(), m28239a, 0L, null, Constants.CONTACT_LIST, "Speed Dial", ContactUtils.m28326a(m28239a, ContactUtils.m28327a(m28239a).getDeviceId()), null);
                        }
                    });
                }
            }
        }.execute();
    }

    /* renamed from: b */
    public /* synthetic */ void m30468b(String str, Activity activity) {
        PhoneManager.m28248a(activity, PhoneManager.get().m28239a(str), 0L, null, Constants.CONTACT_LIST, "Dialer long-press dial", true, new C65503());
    }

    /* renamed from: b */
    private static boolean m30470b(Context context, String str) {
        if (StringUtils.m26042b(str, "*#07#")) {
            Intent intent = new Intent("android.settings.SHOW_REGULATORY_INFO");
            if (!Activities.m27672a(intent)) {
                return false;
            }
            Activities.m27656b(context, intent);
            return true;
        }
        return false;
    }

    /* renamed from: c */
    private void m30466c(int i) {
        KeyEvent keyEvent = new KeyEvent(0, i);
        AndroidUtils.m27630a(this.f22692i, 1);
        this.f22697n.onKeyDown(i, keyEvent);
        int length = this.f22697n.length();
        if (length == this.f22697n.getSelectionStart() && length == this.f22697n.getSelectionEnd()) {
            this.f22697n.setCursorVisible(false);
        }
        String obj = this.f22697n.getText().toString();
        if (m30478a(this.f22704u, obj) || m30470b(this.f22704u, obj)) {
            this.f22697n.setText("");
        }
    }

    /* renamed from: d */
    private void m30463d(int i) {
        if (this.f22688c == null) {
            CLog.m27611a(TwelveKeyDialer.class, "toneManager is null while trying to play tone!");
        } else if (Build.VERSION.SDK_INT < 23 || !this.f22703t) {
            if (this.f22686a || m30461e()) {
                return;
            }
            this.f22688c.m28660a(i);
        } else {
            Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(this.f22707x);
            Call call = telecomCallFromCallData;
            if (telecomCallFromCallData == null) {
                call = PhoneStateManager.get().getTelecomCallFromCallData(PhoneManager.get().getActiveCall());
            }
            if (call != null) {
                this.f22688c.m28658a(call, m30460e(i));
            } else {
                FeedbackManager.get().m28670a("Play DTMF FAILED !!!", 80);
            }
        }
    }

    /* renamed from: e */
    private static char m30460e(int i) {
        switch (i) {
            case 0:
                return '0';
            case 1:
                return '1';
            case 2:
                return '2';
            case 3:
                return '3';
            case 4:
                return '4';
            case 5:
                return '5';
            case 6:
                return '6';
            case 7:
                return '7';
            case 8:
                return '8';
            case 9:
                return '9';
            case 10:
                return '*';
            case 11:
                return '#';
            default:
                throw new RuntimeException("Unknown tone given");
        }
    }

    /* renamed from: e */
    private boolean m30461e() {
        int ringerMode = this.f22698o.getRingerMode();
        return ringerMode == 0 || ringerMode == 1;
    }

    public void setButtonsVisibility(boolean z) {
        if (!z) {
            this.f22699p.setVisibility(0);
            this.f22694k.setVisibility(8);
            this.f22700q.setVisibility(0);
            return;
        }
        this.f22699p.setVisibility(0);
        if (this.f22691h) {
            this.f22694k.setVisibility(0);
        } else {
            this.f22694k.setVisibility(4);
        }
        this.f22700q.setVisibility(8);
    }

    private void setupButtons(View view) {
        TwelveKeyDialerButton twelveKeyDialerButton = (TwelveKeyDialerButton) view.findViewById(2131363409);
        TwelveKeyDialerButton twelveKeyDialerButton2 = (TwelveKeyDialerButton) view.findViewById(2131364451);
        twelveKeyDialerButton2.m30451a("2");
        TwelveKeyDialerButton twelveKeyDialerButton3 = (TwelveKeyDialerButton) view.findViewById(2131364117);
        twelveKeyDialerButton3.m30451a("3");
        TwelveKeyDialerButton twelveKeyDialerButton4 = (TwelveKeyDialerButton) view.findViewById(2131362864);
        twelveKeyDialerButton4.m30451a("4");
        TwelveKeyDialerButton twelveKeyDialerButton5 = (TwelveKeyDialerButton) view.findViewById(2131362833);
        twelveKeyDialerButton5.m30451a("5");
        TwelveKeyDialerButton twelveKeyDialerButton6 = (TwelveKeyDialerButton) view.findViewById(2131363876);
        twelveKeyDialerButton6.m30451a("6");
        TwelveKeyDialerButton twelveKeyDialerButton7 = (TwelveKeyDialerButton) view.findViewById(2131363824);
        twelveKeyDialerButton7.m30451a("7");
        TwelveKeyDialerButton twelveKeyDialerButton8 = (TwelveKeyDialerButton) view.findViewById(2131362682);
        twelveKeyDialerButton8.m30451a("8");
        TwelveKeyDialerButton twelveKeyDialerButton9 = (TwelveKeyDialerButton) view.findViewById(2131363369);
        twelveKeyDialerButton9.m30451a("9");
        TwelveKeyDialerButton twelveKeyDialerButton10 = (TwelveKeyDialerButton) view.findViewById(2131364581);
        twelveKeyDialerButton10.m30451a("0");
        this.f22708y = (TwelveKeyDialerButton) view.findViewById(2131363954);
        this.f22709z = (TwelveKeyDialerButton) view.findViewById(2131363547);
        if (this.f22703t) {
            view.setOnTouchListener(this);
        }
        TwelveKeyDialerButton[] twelveKeyDialerButtonArr = {twelveKeyDialerButton, twelveKeyDialerButton2, twelveKeyDialerButton3, twelveKeyDialerButton4, twelveKeyDialerButton5, twelveKeyDialerButton6, twelveKeyDialerButton7, twelveKeyDialerButton8, twelveKeyDialerButton9, twelveKeyDialerButton10};
        this.f22701r = twelveKeyDialerButtonArr;
        for (TwelveKeyDialerButton twelveKeyDialerButton11 : twelveKeyDialerButtonArr) {
            if (this.f22703t) {
                twelveKeyDialerButton11.setOnTouchListener(this);
            } else {
                twelveKeyDialerButton11.setOnClickListener(this);
            }
            if (this.f22703t) {
                this.f22708y.setOnTouchListener(this);
                this.f22709z.setOnTouchListener(this);
            } else {
                this.f22708y.setOnClickListener(this);
                this.f22709z.setOnClickListener(this);
            }
        }
        ImageView imageView = (ImageView) this.f22702s.findViewById(2131362547);
        this.f22699p = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f22699p.setOnClickListener(this);
        Drawable drawable = ViewUtils.getDrawable(2131231542);
        if (drawable != null) {
            drawable.setColorFilter(ThemeUtils.m27386a(this.f22704u, 2131099881), PorterDuff.Mode.SRC_IN);
        }
        FloatingActionButton floatingActionButton = (FloatingActionButton) this.f22702s.findViewById(2131362568);
        floatingActionButton.setImageDrawable(drawable);
        floatingActionButton.setOnClickListener(this);
        floatingActionButton.setOnLongClickListener(this);
        floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.m27386a(view.getContext(), 2131099914)));
        ImageView imageView2 = (ImageView) this.f22702s.findViewById(2131362590);
        this.f22700q = imageView2;
        imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f22700q.setOnClickListener(this);
        this.f22697n.setOnClickListener(this);
        this.f22697n.setOnLongClickListener(this);
        this.f22702s.findViewById(2131362547).setOnLongClickListener(this);
        twelveKeyDialerButton10.setOnLongClickListener(this);
        twelveKeyDialerButton.setOnLongClickListener(this);
        twelveKeyDialerButton2.setOnLongClickListener(this);
        twelveKeyDialerButton3.setOnLongClickListener(this);
        twelveKeyDialerButton4.setOnLongClickListener(this);
        twelveKeyDialerButton5.setOnLongClickListener(this);
        twelveKeyDialerButton6.setOnLongClickListener(this);
        twelveKeyDialerButton7.setOnLongClickListener(this);
        twelveKeyDialerButton8.setOnLongClickListener(this);
        twelveKeyDialerButton9.setOnLongClickListener(this);
        m30464d();
    }

    /* renamed from: a */
    public final void m30481a() {
        this.f22697n.setTextColor(ThemeUtils.getColor(2131100228));
        this.f22699p.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        this.f22694k.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        this.f22700q.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        if (CollectionUtils.m26066b(this.f22701r)) {
            for (TwelveKeyDialerButton twelveKeyDialerButton : this.f22701r) {
                twelveKeyDialerButton.m30452a();
            }
        }
        TwelveKeyDialerButton twelveKeyDialerButton2 = this.f22708y;
        if (twelveKeyDialerButton2 != null) {
            twelveKeyDialerButton2.m30452a();
        }
        TwelveKeyDialerButton twelveKeyDialerButton3 = this.f22709z;
        if (twelveKeyDialerButton3 != null) {
            twelveKeyDialerButton3.m30452a();
        }
    }

    /* renamed from: a */
    public final void m30473a(boolean z) {
        this.f22690g = z;
        this.f22697n.setText("");
    }

    /* renamed from: b */
    public final void m30472b() {
        new Task() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                synchronized (TwelveKeyDialer.this.f22689f) {
                    TwelveKeyDialer.this.f22693j.clear();
                    for (SpeedDialActivity.SpeedDialData speedDialData : SpeedDialActivity.m29591a(Prefs.f26228aE.get())) {
                        TwelveKeyDialer.this.f22693j.put(speedDialData.getDigit(), speedDialData);
                    }
                }
            }
        }.execute();
    }

    /* renamed from: c */
    public final void m30467c() {
        if (this.f22688c == null) {
            CLog.m27611a(TwelveKeyDialer.class, "toneManager is null while trying to stop tone!");
        } else if (Build.VERSION.SDK_INT < 23 || !this.f22703t) {
        } else {
            Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(this.f22707x);
            Call call = telecomCallFromCallData;
            if (telecomCallFromCallData == null) {
                call = PhoneStateManager.get().getTelecomCallFromCallData(PhoneManager.get().getActiveCall());
            }
            if (call != null) {
                this.f22688c.m28659a(call);
            } else {
                FeedbackManager.get().m28670a("Stop DTMF FAILED !!!", 80);
            }
        }
    }

    /* renamed from: d */
    public final void m30464d() {
        AnalyticsManager.get().m28449a(Constants.KEYPAD, "T9 language changed: " + this.f22687b, Constants.KEYPAD_LABEL);
        this.f22687b = (Language) Prefs.f26277bA.get();
        String[] strArr = new String[12];
        int i = 0;
        switch (C65678.f22732a[this.f22687b.ordinal()]) {
            case 1:
                strArr[1] = m30475a(Activities.getString(2131887777));
                strArr[2] = m30475a(Activities.getString(2131887785));
                strArr[3] = m30475a(Activities.getString(2131887794));
                strArr[4] = m30475a(Activities.getString(2131887803));
                strArr[5] = m30475a(Activities.getString(2131887812));
                strArr[6] = m30475a(Activities.getString(2131887821));
                strArr[7] = m30475a(Activities.getString(2131887830));
                strArr[8] = m30475a(Activities.getString(2131887839));
                break;
            case 2:
                strArr[1] = m30475a(Activities.getString(2131887779));
                strArr[2] = m30475a(Activities.getString(2131887787));
                strArr[3] = m30475a(Activities.getString(2131887796));
                strArr[4] = m30475a(Activities.getString(2131887805));
                strArr[5] = m30475a(Activities.getString(2131887814));
                strArr[6] = m30475a(Activities.getString(2131887823));
                strArr[7] = m30475a(Activities.getString(2131887832));
                strArr[8] = m30475a(Activities.getString(2131887841));
                break;
            case 3:
                strArr[1] = Activities.getString(2131886959);
                strArr[2] = Activities.getString(2131886960);
                strArr[3] = Activities.getString(2131886961);
                strArr[4] = Activities.getString(2131886962);
                strArr[5] = Activities.getString(2131886963);
                strArr[6] = Activities.getString(2131886964);
                strArr[7] = Activities.getString(2131886965);
                strArr[8] = Activities.getString(2131886966);
                break;
            case 4:
                strArr[1] = Activities.getString(2131886950);
                strArr[2] = Activities.getString(2131886951);
                strArr[3] = Activities.getString(2131886952);
                strArr[4] = Activities.getString(2131886953);
                strArr[5] = Activities.getString(2131886954);
                strArr[6] = Activities.getString(2131886955);
                strArr[7] = Activities.getString(2131886956);
                strArr[8] = Activities.getString(2131886957);
                break;
            case 5:
                strArr[1] = m30475a(Activities.getString(2131887773));
                strArr[2] = m30475a(Activities.getString(2131887781));
                strArr[3] = m30475a(Activities.getString(2131887789));
                strArr[4] = m30475a(Activities.getString(2131887798));
                strArr[5] = m30475a(Activities.getString(2131887807));
                strArr[6] = m30475a(Activities.getString(2131887816));
                strArr[7] = m30475a(Activities.getString(2131887825));
                strArr[8] = m30475a(Activities.getString(2131887834));
                break;
            case 6:
                strArr[0] = m30475a(Activities.getString(2131887771));
                strArr[1] = m30475a(Activities.getString(2131887778));
                strArr[2] = m30475a(Activities.getString(2131887786));
                strArr[3] = m30475a(Activities.getString(2131887795));
                strArr[4] = m30475a(Activities.getString(2131887804));
                strArr[5] = m30475a(Activities.getString(2131887813));
                strArr[6] = m30475a(Activities.getString(2131887822));
                strArr[7] = m30475a(Activities.getString(2131887831));
                strArr[8] = m30475a(Activities.getString(2131887840));
                strArr[9] = m30475a(Activities.getString(2131887770));
                break;
            case 7:
                strArr[3] = Activities.getString(2131887095);
                strArr[4] = Activities.getString(2131887096);
                strArr[5] = Activities.getString(2131887097);
                strArr[6] = Activities.getString(2131887098);
                strArr[7] = Activities.getString(2131887099);
                strArr[8] = Activities.getString(2131887100);
                strArr[9] = Activities.getString(2131887094);
                break;
            case 8:
                strArr[1] = m30475a(Activities.getString(2131887774));
                strArr[2] = m30475a(Activities.getString(2131887782));
                strArr[3] = m30475a(Activities.getString(2131887790));
                strArr[4] = m30475a(Activities.getString(2131887799));
                strArr[5] = m30475a(Activities.getString(2131887808));
                strArr[6] = m30475a(Activities.getString(2131887817));
                strArr[7] = m30475a(Activities.getString(2131887826));
                strArr[8] = m30475a(Activities.getString(2131887835));
                break;
        }
        float m30479a = m30479a(this.f22704u);
        while (true) {
            TwelveKeyDialerButton[] twelveKeyDialerButtonArr = this.f22701r;
            if (i < twelveKeyDialerButtonArr.length) {
                twelveKeyDialerButtonArr[i].m30450b(f22685e[i]);
                this.f22701r[i].m30449c(strArr[i]);
                this.f22701r[i].setSecondaryTextSize(m30479a);
                i++;
            } else {
                return;
            }
        }
    }

    public CharSequence getNumber() {
        return this.f22697n.getText();
    }

    public boolean isUserAddedToDialerText() {
        return this.f22706w;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        this.f22707x = callData;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AndroidUtils.m27630a(view, 1);
        switch (view.getId()) {
            case 2131362547:
                m30466c(67);
                return;
            case 2131362568:
                AndroidUtils.m27630a(this.f22692i, 1);
                String obj = this.f22697n.getText().toString();
                if (!StringUtils.m26059a((CharSequence) obj)) {
                    AnalyticsManager.get().m28449a(Constants.KEYPAD, "Call to number", Constants.CLICK);
                    AndroidUtils.m27630a(this.f22692i, 1);
                    PhoneManager.m28248a(this.f22704u, PhoneManager.get().m28239a(obj), 0L, null, Constants.CONTACT_LIST, "Dialer dial", false, new C65647());
                    return;
                }
                AnalyticsManager.get().m28449a(Constants.KEYPAD, "Show last call log number", Constants.CLICK);
                CallLogEntry m27562a = CallLogUtils.m27562a(true);
                if (m27562a == null) {
                    return;
                }
                setNumber(m27562a.getNumber());
                return;
            case 2131362571:
                AnalyticsManager.get().m28449a(Constants.KEYPAD, "Voice search from keypad", Constants.CLICK);
                KeypadRequestsEvents keypadRequestsEvents = this.f22696m;
                if (keypadRequestsEvents == null) {
                    return;
                }
                keypadRequestsEvents.mo30453a();
                return;
            case 2131362590:
                ImageView imageView = this.f22700q;
                AnalyticsManager.get().m28449a(Constants.KEYPAD, "Showing keypad menu options", Constants.CLICK);
                PopupMenu popupMenu = new PopupMenu(this.f22704u, imageView);
                popupMenu.setOnMenuItemClickListener(this);
                popupMenu.inflate(2131623939);
                Menu menu = popupMenu.getMenu();
                menu.findItem(2131362592).setTitle(Activities.getString(2131887183));
                menu.findItem(2131362593).setTitle(Activities.getString(2131887184));
                popupMenu.show();
                return;
            case 2131362597:
                if (this.f22697n.length() == 0) {
                    return;
                }
                this.f22697n.setCursorVisible(true);
                return;
            case 2131362682:
                m30463d(8);
                m30466c(15);
                this.f22706w = true;
                return;
            case 2131362833:
                m30463d(5);
                m30466c(12);
                this.f22706w = true;
                return;
            case 2131362864:
                m30463d(4);
                m30466c(11);
                this.f22706w = true;
                return;
            case 2131363369:
                m30463d(9);
                m30466c(16);
                this.f22706w = true;
                return;
            case 2131363409:
                m30463d(1);
                m30466c(8);
                this.f22706w = true;
                return;
            case 2131363547:
                m30463d(11);
                m30466c(18);
                return;
            case 2131363824:
                m30463d(7);
                m30466c(14);
                this.f22706w = true;
                return;
            case 2131363876:
                m30463d(6);
                m30466c(13);
                this.f22706w = true;
                return;
            case 2131363954:
                m30463d(10);
                m30466c(17);
                return;
            case 2131364117:
                m30463d(3);
                m30466c(10);
                this.f22706w = true;
                return;
            case 2131364451:
                m30463d(2);
                m30466c(9);
                this.f22706w = true;
                return;
            case 2131364581:
                m30463d(0);
                m30466c(7);
                this.f22706w = true;
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        AndroidUtils.m27630a(view, 0);
        int id = view.getId();
        if (!this.f22703t || id == 2131362547) {
            int intValue = (!StringUtils.m26045b((CharSequence) this.f22697n.getText().toString()) || this.f22697n.getText().length() >= 2 || !StringUtils.m26050a(this.f22697n.getText().toString(), false)) ? 0 : Integer.valueOf(this.f22697n.getText().toString()).intValue();
            this.f22705v = intValue;
            switch (id) {
                case 2131362547:
                    AnalyticsManager.get().m28449a(Constants.KEYPAD, "Clear number", Constants.CLICK);
                    m30473a(true);
                    int length = this.f22697n.length();
                    if (length != this.f22697n.getSelectionStart() || length != this.f22697n.getSelectionEnd()) {
                        return true;
                    }
                    this.f22697n.setCursorVisible(false);
                    return true;
                case 2131362568:
                    final String obj = this.f22697n.getText().toString();
                    AnalyticsManager.get().m28449a(Constants.KEYPAD, "Call to number", Constants.CLICK);
                    AndroidUtils.m27630a(this.f22692i, 1);
                    if (OptInWithTopImagePopup.m28052b()) {
                        OptInWithTopImagePopup.m28051b(this.f22704u, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad._$$Lambda$TwelveKeyDialer$kn8WtWiXFBDuh19bwo_BtFqkprA
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public final void onClickListener(Activity activity) {
                                TwelveKeyDialer.this.m30468b(obj, activity);
                            }
                        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad._$$Lambda$TwelveKeyDialer$csWYHuEIvdnzIE2vT8aA_LJoo4M
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public final void onClickListener(Activity activity) {
                                TwelveKeyDialer.this.m30474a(obj, activity);
                            }
                        });
                        return true;
                    }
                    PhoneManager.m28248a(this.f22704u, PhoneManager.get().m28239a(obj), 0L, null, Constants.CONTACT_LIST, "Dialer long-press dial", true, new C65565());
                    return true;
                case 2131362597:
                    this.f22697n.setCursorVisible(true);
                    return false;
                case 2131362682:
                    m30480a(8);
                    return true;
                case 2131362833:
                    m30480a(5);
                    return true;
                case 2131362864:
                    m30480a(4);
                    return true;
                case 2131363369:
                    m30480a(9);
                    return true;
                case 2131363409:
                    if (intValue == 0) {
                        PhoneManager.m28230c(CallAppApplication.get());
                        return true;
                    }
                    m30480a(1);
                    return true;
                case 2131363824:
                    m30480a(7);
                    return true;
                case 2131363876:
                    m30480a(6);
                    return true;
                case 2131364117:
                    m30480a(3);
                    return true;
                case 2131364451:
                    m30480a(2);
                    return true;
                case 2131364581:
                    if (intValue == 0) {
                        m30466c(81);
                        return true;
                    }
                    m30480a(0);
                    return true;
                default:
                    return true;
            }
        }
        return false;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2131362592:
                m30466c(55);
                return true;
            case 2131362593:
                m30466c(74);
                return true;
            default:
                return false;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            onClick(view);
            return false;
        } else if (action != 1) {
            return false;
        } else {
            m30467c();
            return false;
        }
    }

    public void setFilterListener(FilterListener filterListener) {
        this.f22695l = filterListener;
    }

    public void setKeypadRequestsEventsListener(KeypadRequestsEvents keypadRequestsEvents) {
        this.f22696m = keypadRequestsEvents;
    }

    public void setNumber(String str) {
        String obj = this.f22697n.getText().toString();
        if (str != null && str.length() == obj.length()) {
            this.f22697n.setText(str);
            this.f22697n.setSelection(obj.length());
        } else if (StringUtils.m26059a((CharSequence) str)) {
        } else {
            this.f22697n.getText().clear();
            this.f22697n.append(str);
        }
    }
}
