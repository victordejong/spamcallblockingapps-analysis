package com.callapp.contacts.widget.sticky;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.permission.PermissionAllowedEvent;
import com.callapp.contacts.manager.permission.PermissionDeniedEvent;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.sticky.StickyPermissionView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionView.class */
public class StickyPermissionView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f16948a;

    /* renamed from: b  reason: collision with root package name */
    private View f16949b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16950c;

    /* renamed from: d  reason: collision with root package name */
    private PermissionManager f16951d;
    private ImageView e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.sticky.StickyPermissionView$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionView$1.class */
    public class AnonymousClass1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PermissionManager.PermissionGroup f16952a;

        AnonymousClass1(PermissionManager.PermissionGroup permissionGroup) {
            this.f16952a = permissionGroup;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(PermissionManager.PermissionGroup permissionGroup) {
            EventBusManager.f14368a.a((EventType<L, EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>>) PermissionDeniedEvent.f15115a, (EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>) permissionGroup, false);
            StickyPermissionView.this.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(PermissionManager.PermissionGroup permissionGroup) {
            EventBusManager.f14368a.a((EventType<L, EventType<PermissionAllowedEvent, PermissionManager.PermissionGroup>>) PermissionAllowedEvent.f15114a, (EventType<PermissionAllowedEvent, PermissionManager.PermissionGroup>) permissionGroup, false);
            StickyPermissionView.this.setVisibility(8);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            final PermissionManager.PermissionGroup permissionGroup = this.f16952a;
            Runnable ___lambda_stickypermissionview_1_0gmx5slzbpfunt3fwc5y0lavuok = new Runnable() { // from class: com.callapp.contacts.widget.sticky._$$Lambda$StickyPermissionView$1$0gMX5sLzBPfuNt3FwC5y0lavUOk
                @Override // java.lang.Runnable
                public final void run() {
                    StickyPermissionView.AnonymousClass1.this.b(permissionGroup);
                }
            };
            final PermissionManager.PermissionGroup permissionGroup2 = this.f16952a;
            StickyPermissionView.this.f16951d.a((BaseActivity) StickyPermissionView.this.getContext(), ___lambda_stickypermissionview_1_0gmx5slzbpfunt3fwc5y0lavuok, new Runnable() { // from class: com.callapp.contacts.widget.sticky._$$Lambda$StickyPermissionView$1$1_nu28uq9sKfjbZzrMsKCGpaD78
                @Override // java.lang.Runnable
                public final void run() {
                    StickyPermissionView.AnonymousClass1.this.a(permissionGroup2);
                }
            }, this.f16952a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.sticky.StickyPermissionView$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionView$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16954a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[PermissionManager.PermissionGroup.values().length];
            f16954a = iArr;
            try {
                iArr[PermissionManager.PermissionGroup.LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16954a[PermissionManager.PermissionGroup.MICROPHONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f16954a[PermissionManager.PermissionGroup.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f16954a[PermissionManager.PermissionGroup.SMS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f16954a[PermissionManager.PermissionGroup.STORAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f16954a[PermissionManager.PermissionGroup.CALL_LOG.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f16954a[PermissionManager.PermissionGroup.CONTACTS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public StickyPermissionView(Context context) {
        this(context, null);
    }

    public StickyPermissionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickyPermissionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(SpannableString spannableString, String str, Integer num) {
        int indexOf = spannableString.toString().indexOf(str);
        int length = str.length() + indexOf;
        if (indexOf >= 0 && length <= spannableString.length()) {
            spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), indexOf, length, 33);
            spannableString.setSpan(new StyleSpan(1), indexOf, length, 33);
            if (num != null) {
                spannableString.setSpan(new ForegroundColorSpan(num.intValue()), indexOf, length, 18);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(PermissionManager.PermissionGroup permissionGroup, View view) {
        EventBusManager.f14368a.a((EventType<L, EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>>) PermissionDeniedEvent.f15115a, (EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>) permissionGroup, false);
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View.OnClickListener a(PermissionManager.PermissionGroup permissionGroup) {
        return new AnonymousClass1(permissionGroup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context) {
        LayoutInflater.from(context).inflate(getLayout(), (ViewGroup) this, true);
        this.f16949b = findViewById(2131363991);
        this.f16950c = (TextView) findViewById(2131363993);
        this.f16948a = (TextView) findViewById(2131363995);
        this.e = (ImageView) findViewById(2131363994);
        setBackgroundResource(2131232212);
        setLayoutParams(new Constraints.LayoutParams(-1, getContainerHeight()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View.OnClickListener b(PermissionManager.PermissionGroup permissionGroup) {
        return new _$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l_UpSPpRycfew(this, permissionGroup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StickyPermissionViewData c(PermissionManager.PermissionGroup permissionGroup) {
        if (AnonymousClass2.f16954a[permissionGroup.ordinal()] != 1) {
            return null;
        }
        return new StickyPermissionViewData(Activities.getString(2131887576), 2131232041, a(permissionGroup), new _$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l_UpSPpRycfew(this, permissionGroup));
    }

    protected int getContainerHeight() {
        return -2;
    }

    protected int getLayout() {
        return 2131558847;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setData(StickyPermissionViewData stickyPermissionViewData) {
        SpannableString spannableString = new SpannableString(stickyPermissionViewData.getTitle());
        a(spannableString, Activities.getString(2131887610), Integer.valueOf(ThemeUtils.getColor(2131100228)));
        this.f16948a.setText(spannableString);
        this.f16949b.setOnClickListener(stickyPermissionViewData.getOnAllowClickListener());
        this.f16950c.setText(Activities.getString(2131886738));
        this.f16950c.setOnClickListener(stickyPermissionViewData.getOnDenyClickListener());
        ImageUtils.a(this.e, stickyPermissionViewData.getImage());
    }

    public void setPermissionToRequest(PermissionManager permissionManager, PermissionManager.PermissionGroup permissionGroup) {
        this.f16951d = permissionManager;
        setData(c(permissionGroup));
    }
}
