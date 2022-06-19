package com.callapp.contacts.widget;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.TopBarFragment;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Date;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SimpleSearchBarFragment.class */
public class SimpleSearchBarFragment extends TopBarFragment {

    /* renamed from: a */
    ViewGroup f28914a;

    /* renamed from: d */
    private EditText f28916d;

    /* renamed from: e */
    private ImageView f28917e;

    /* renamed from: f */
    private ImageView f28918f;

    /* renamed from: g */
    private ImageView f28919g;

    /* renamed from: i */
    private boolean f28921i;

    /* renamed from: j */
    private boolean f28922j;

    /* renamed from: r */
    private SearchBarEvents f28930r;

    /* renamed from: c */
    private final int f28915c = ThemeUtils.getColor(2131100108);

    /* renamed from: h */
    private float f28920h = -1.0f;

    /* renamed from: k */
    private boolean f28923k = true;

    /* renamed from: l */
    private int f28924l = 2131099891;

    /* renamed from: m */
    private int f28925m = 2131232172;

    /* renamed from: n */
    private int f28926n = ThemeUtils.getColor(2131100140);

    /* renamed from: o */
    private int f28927o = ThemeUtils.getColor(2131099930);

    /* renamed from: p */
    private String f28928p = Activities.getString(2131887611);

    /* renamed from: q */
    private final IgnorableTextWatcher f28929q = new IgnorableTextWatcher() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SimpleSearchBarFragment.this.m26620a(StringUtils.m26059a(editable));
            if (SimpleSearchBarFragment.this.f28916d.getText().length() == 0) {
                SimpleSearchBarFragment.this.f28916d.setTextSize(1, 16.0f);
            } else if (SimpleSearchBarFragment.this.f28920h <= BitmapDescriptorFactory.HUE_RED) {
            } else {
                SimpleSearchBarFragment.this.f28916d.setTextSize(0, SimpleSearchBarFragment.this.f28920h);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (this.f28939b.remove(charSequence.toString()) || SimpleSearchBarFragment.this.f28930r == null) {
                return;
            }
            SimpleSearchBarFragment.this.f28930r.mo26316a(charSequence, i);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher.class */
    public abstract class IgnorableTextWatcher implements TextWatcher {

        /* renamed from: b */
        HashSet<String> f28939b = new HashSet<>(1);

        IgnorableTextWatcher() {
            SimpleSearchBarFragment.this = r6;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents.class */
    public interface SearchBarEvents extends TopBarFragment.TopBarEvents {
        /* renamed from: a */
        void mo26323a();

        /* renamed from: a */
        void mo26316a(CharSequence charSequence, int i);

        /* renamed from: b */
        void mo26314b();
    }

    private String getSearchHintText() {
        return this.f28928p;
    }

    /* renamed from: a */
    public void mo26622a() {
        m26619b();
    }

    /* renamed from: a */
    public final void m26620a(boolean z) {
        int i = 0;
        if (!z) {
            this.f28918f.setVisibility(8);
            this.f28919g.setVisibility(0);
            return;
        }
        ImageView imageView = this.f28918f;
        if (!this.f28921i || this.f28922j) {
            i = 8;
        }
        imageView.setVisibility(i);
        this.f28919g.setVisibility(8);
    }

    /* renamed from: b */
    public final void m26619b() {
        this.f28916d.requestFocus();
        Activities.m27670a(this.f28916d);
    }

    /* renamed from: b */
    public final void m26617b(boolean z) {
        ImageView imageView = this.f28917e;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        } else {
            this.f28923k = z;
        }
    }

    /* renamed from: c */
    public final void m26616c() {
        Activities.m27653b(this.f28916d);
        getSearchBox().clearFocus();
        this.f28914a.requestFocus();
    }

    @Override // com.callapp.contacts.widget.TopBarFragment
    protected int getBackgroundResource() {
        return this.f28925m;
    }

    @Override // com.callapp.contacts.widget.TopBarFragment
    protected int getBgColor() {
        return this.f28924l;
    }

    @Override // com.callapp.contacts.widget.TopBarFragment
    protected int getRootViewResId() {
        return 2131559024;
    }

    public EditText getSearchBox() {
        return this.f28916d;
    }

    protected int getSearchBoxHintColor() {
        return this.f28927o;
    }

    protected int getSearchBoxTextColor() {
        return this.f28926n;
    }

    public String getSearchText() {
        EditText editText = this.f28916d;
        if (editText == null) {
            return null;
        }
        return editText.getText().toString();
    }

    @Override // com.callapp.contacts.widget.TopBarFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f28914a = viewGroup2;
        ImageView imageView = (ImageView) viewGroup2.findViewById(2131362148);
        this.f28917e = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(this.f28915c, PorterDuff.Mode.SRC_IN));
        this.f28917e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28449a(Constants.SEARCH_BAR_FRAGMENMT, "overflow requested from search bar", Constants.CLICK);
                if (SimpleSearchBarFragment.this.f28930r != null) {
                    SearchBarEvents unused = SimpleSearchBarFragment.this.f28930r;
                }
            }
        });
        m26617b(this.f28923k);
        this.f28918f = (ImageView) viewGroup2.findViewById(2131363140);
        boolean m27672a = Activities.m27672a(Activities.getVoiceSearchIntent());
        this.f28921i = m27672a;
        if (!m27672a || this.f28922j) {
            AnalyticsManager.get().m28450a(Constants.SEARCH_BAR_FRAGMENMT, "Voice search not supported by device: hiding voice search button");
            this.f28918f.setVisibility(8);
        } else {
            AnalyticsManager.get().m28450a(Constants.SEARCH_BAR_FRAGMENMT, "Voice search supported by device: showing voice search button");
            this.f28918f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    AnalyticsManager.get().m28449a(Constants.SEARCH_BAR_FRAGMENMT, "Voice search requested from search bar", Constants.CLICK);
                    if (SimpleSearchBarFragment.this.f28930r != null) {
                        SimpleSearchBarFragment.this.f28930r.mo26323a();
                    }
                }
            });
            this.f28918f.setColorFilter(new PorterDuffColorFilter(this.f28915c, PorterDuff.Mode.SRC_IN));
            this.f28918f.setVisibility(0);
        }
        ImageView imageView2 = (ImageView) viewGroup2.findViewById(2131363139);
        this.f28919g = imageView2;
        imageView2.setColorFilter(new PorterDuffColorFilter(this.f28915c, PorterDuff.Mode.SRC_IN));
        this.f28919g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Clear search from keyboard");
                SimpleSearchBarFragment.this.setSearchText("");
                SimpleSearchBarFragment.this.m26619b();
            }
        });
        ImageView imageView3 = (ImageView) viewGroup2.findViewById(2131363759);
        if (imageView3 != null) {
            imageView3.setColorFilter(new PorterDuffColorFilter(this.f28915c, PorterDuff.Mode.SRC_IN));
            imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (SimpleSearchBarFragment.this.f28930r != null) {
                        SimpleSearchBarFragment.this.f28930r.mo26314b();
                    }
                }
            });
        }
        EditText editText = (EditText) viewGroup2.findViewById(2131363756);
        this.f28916d = editText;
        editText.setHintTextColor(getSearchBoxHintColor());
        this.f28916d.setTextColor(getSearchBoxTextColor());
        this.f28916d.setImeOptions(3);
        this.f28916d.setRawInputType(524464);
        this.f28916d.addTextChangedListener(this.f28929q);
        this.f28916d.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.6

            /* renamed from: a */
            long f28936a;

            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                long time = new Date().getTime();
                boolean z = time - this.f28936a < 1000;
                this.f28936a = time;
                if (!z) {
                    if (i != 3 && i != 5 && i != 2 && i != 4 && i != 6 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                        return false;
                    }
                    SimpleSearchBarFragment.this.m26616c();
                    if (SimpleSearchBarFragment.this.f28930r == null) {
                        return false;
                    }
                    SimpleSearchBarFragment.this.f28930r.mo26314b();
                    return false;
                }
                return false;
            }
        });
        this.f28916d.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (1 == motionEvent.getAction()) {
                    SimpleSearchBarFragment.this.mo26622a();
                    return false;
                }
                return false;
            }
        });
        this.f28920h = this.f28916d.getTextSize();
        if (this.f28916d.getText().length() == 0) {
            this.f28916d.setTextSize(1, 16.0f);
        }
        this.f28916d.setHint(getSearchHintText());
        m26620a(StringUtils.m26059a(this.f28916d.getText()));
        return this.f28914a;
    }

    public void setBackgroundColor(int i) {
        this.f28924l = i;
    }

    public void setBackgroundResource(int i) {
        this.f28925m = i;
    }

    public void setSearchBarEventsListener(SearchBarEvents searchBarEvents) {
        this.f28930r = searchBarEvents;
    }

    public void setSearchBoxTextColor(int i) {
        this.f28926n = i;
    }

    public void setSearchHint(String str) {
        EditText editText = this.f28916d;
        if (editText != null) {
            editText.setHint(str);
        }
    }

    public void setSearchHintText(String str) {
        this.f28928p = str;
    }

    public void setSearchText(String str) {
        EditText editText = this.f28916d;
        if (editText != null) {
            String obj = editText.getText().toString();
            if (str != null && obj != null && (obj.length() == 0 || str.length() == obj.length())) {
                this.f28916d.setText(str);
                this.f28916d.setSelection(obj.length());
                return;
            }
            this.f28916d.setText("");
            if (StringUtils.m26059a((CharSequence) str)) {
                return;
            }
            this.f28916d.append(str);
        }
    }

    public void setSearchTextWithOutNotifying(String str) {
        this.f28929q.f28939b.add(str);
        setSearchText(str);
    }

    public void setVoiceSearchHidden(boolean z) {
        this.f28922j = z;
    }
}
