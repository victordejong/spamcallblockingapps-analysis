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

    /* renamed from: a  reason: collision with root package name */
    ViewGroup f16621a;

    /* renamed from: d  reason: collision with root package name */
    private EditText f16623d;
    private ImageView e;
    private ImageView f;
    private ImageView g;
    private boolean i;
    private boolean j;
    private SearchBarEvents r;

    /* renamed from: c  reason: collision with root package name */
    private final int f16622c = ThemeUtils.getColor(2131100108);
    private float h = -1.0f;
    private boolean k = true;
    private int l = 2131099891;
    private int m = 2131232172;
    private int n = ThemeUtils.getColor(2131100140);
    private int o = ThemeUtils.getColor(2131099930);
    private String p = Activities.getString(2131887611);
    private final IgnorableTextWatcher q = new IgnorableTextWatcher() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SimpleSearchBarFragment.this.a(StringUtils.a(editable));
            if (SimpleSearchBarFragment.this.f16623d.getText().length() == 0) {
                SimpleSearchBarFragment.this.f16623d.setTextSize(1, 16.0f);
            } else if (SimpleSearchBarFragment.this.h > BitmapDescriptorFactory.HUE_RED) {
                SimpleSearchBarFragment.this.f16623d.setTextSize(0, SimpleSearchBarFragment.this.h);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (!this.f16632b.remove(charSequence.toString()) && SimpleSearchBarFragment.this.r != null) {
                SimpleSearchBarFragment.this.r.a(charSequence, i);
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher.class */
    abstract class IgnorableTextWatcher implements TextWatcher {

        /* renamed from: b  reason: collision with root package name */
        HashSet<String> f16632b = new HashSet<>(1);

        IgnorableTextWatcher() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents.class */
    public interface SearchBarEvents extends TopBarFragment.TopBarEvents {
        void a();

        void a(CharSequence charSequence, int i);

        void b();
    }

    private String getSearchHintText() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(boolean z) {
        int i = 0;
        if (z) {
            ImageView imageView = this.f;
            if (!this.i || this.j) {
                i = 8;
            }
            imageView.setVisibility(i);
            this.g.setVisibility(8);
            return;
        }
        this.f.setVisibility(8);
        this.g.setVisibility(0);
    }

    public final void b() {
        this.f16623d.requestFocus();
        Activities.a(this.f16623d);
    }

    public final void b(boolean z) {
        ImageView imageView = this.e;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        } else {
            this.k = z;
        }
    }

    public final void c() {
        Activities.b(this.f16623d);
        getSearchBox().clearFocus();
        this.f16621a.requestFocus();
    }

    @Override // com.callapp.contacts.widget.TopBarFragment
    protected int getBackgroundResource() {
        return this.m;
    }

    @Override // com.callapp.contacts.widget.TopBarFragment
    protected int getBgColor() {
        return this.l;
    }

    @Override // com.callapp.contacts.widget.TopBarFragment
    protected int getRootViewResId() {
        return 2131559024;
    }

    public EditText getSearchBox() {
        return this.f16623d;
    }

    protected int getSearchBoxHintColor() {
        return this.o;
    }

    protected int getSearchBoxTextColor() {
        return this.n;
    }

    public String getSearchText() {
        EditText editText = this.f16623d;
        if (editText == null) {
            return null;
        }
        return editText.getText().toString();
    }

    @Override // com.callapp.contacts.widget.TopBarFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f16621a = viewGroup2;
        ImageView imageView = (ImageView) viewGroup2.findViewById(2131362148);
        this.e = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(this.f16622c, PorterDuff.Mode.SRC_IN));
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.SEARCH_BAR_FRAGMENMT, "overflow requested from search bar", Constants.CLICK);
                if (SimpleSearchBarFragment.this.r != null) {
                    SearchBarEvents unused = SimpleSearchBarFragment.this.r;
                }
            }
        });
        b(this.k);
        this.f = (ImageView) viewGroup2.findViewById(2131363140);
        boolean a2 = Activities.a(Activities.getVoiceSearchIntent());
        this.i = a2;
        if (!a2 || this.j) {
            AnalyticsManager.get().a(Constants.SEARCH_BAR_FRAGMENMT, "Voice search not supported by device: hiding voice search button");
            this.f.setVisibility(8);
        } else {
            AnalyticsManager.get().a(Constants.SEARCH_BAR_FRAGMENMT, "Voice search supported by device: showing voice search button");
            this.f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    AnalyticsManager.get().a(Constants.SEARCH_BAR_FRAGMENMT, "Voice search requested from search bar", Constants.CLICK);
                    if (SimpleSearchBarFragment.this.r != null) {
                        SimpleSearchBarFragment.this.r.a();
                    }
                }
            });
            this.f.setColorFilter(new PorterDuffColorFilter(this.f16622c, PorterDuff.Mode.SRC_IN));
            this.f.setVisibility(0);
        }
        ImageView imageView2 = (ImageView) viewGroup2.findViewById(2131363139);
        this.g = imageView2;
        imageView2.setColorFilter(new PorterDuffColorFilter(this.f16622c, PorterDuff.Mode.SRC_IN));
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.REGISTRATION, "Clear search from keyboard");
                SimpleSearchBarFragment.this.setSearchText("");
                SimpleSearchBarFragment.this.b();
            }
        });
        ImageView imageView3 = (ImageView) viewGroup2.findViewById(2131363759);
        if (imageView3 != null) {
            imageView3.setColorFilter(new PorterDuffColorFilter(this.f16622c, PorterDuff.Mode.SRC_IN));
            imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (SimpleSearchBarFragment.this.r != null) {
                        SimpleSearchBarFragment.this.r.b();
                    }
                }
            });
        }
        EditText editText = (EditText) viewGroup2.findViewById(2131363756);
        this.f16623d = editText;
        editText.setHintTextColor(getSearchBoxHintColor());
        this.f16623d.setTextColor(getSearchBoxTextColor());
        this.f16623d.setImeOptions(3);
        this.f16623d.setRawInputType(524464);
        this.f16623d.addTextChangedListener(this.q);
        this.f16623d.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.6

            /* renamed from: a  reason: collision with root package name */
            long f16629a;

            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                long time = new Date().getTime();
                boolean z = time - this.f16629a < 1000;
                this.f16629a = time;
                if (z) {
                    return false;
                }
                if (i != 3 && i != 5 && i != 2 && i != 4 && i != 6 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                    return false;
                }
                SimpleSearchBarFragment.this.c();
                if (SimpleSearchBarFragment.this.r == null) {
                    return false;
                }
                SimpleSearchBarFragment.this.r.b();
                return false;
            }
        });
        this.f16623d.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.widget.SimpleSearchBarFragment.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (1 != motionEvent.getAction()) {
                    return false;
                }
                SimpleSearchBarFragment.this.a();
                return false;
            }
        });
        this.h = this.f16623d.getTextSize();
        if (this.f16623d.getText().length() == 0) {
            this.f16623d.setTextSize(1, 16.0f);
        }
        this.f16623d.setHint(getSearchHintText());
        a(StringUtils.a(this.f16623d.getText()));
        return this.f16621a;
    }

    public void setBackgroundColor(int i) {
        this.l = i;
    }

    public void setBackgroundResource(int i) {
        this.m = i;
    }

    public void setSearchBarEventsListener(SearchBarEvents searchBarEvents) {
        this.r = searchBarEvents;
    }

    public void setSearchBoxTextColor(int i) {
        this.n = i;
    }

    public void setSearchHint(String str) {
        EditText editText = this.f16623d;
        if (editText != null) {
            editText.setHint(str);
        }
    }

    public void setSearchHintText(String str) {
        this.p = str;
    }

    public void setSearchText(String str) {
        EditText editText = this.f16623d;
        if (editText != null) {
            String obj = editText.getText().toString();
            if (str == null || obj == null || !(obj.length() == 0 || str.length() == obj.length())) {
                this.f16623d.setText("");
                if (!StringUtils.a((CharSequence) str)) {
                    this.f16623d.append(str);
                    return;
                }
                return;
            }
            this.f16623d.setText(str);
            this.f16623d.setSelection(obj.length());
        }
    }

    public void setSearchTextWithOutNotifying(String str) {
        this.q.f16632b.add(str);
        setSearchText(str);
    }

    public void setVoiceSearchHidden(boolean z) {
        this.j = z;
    }
}
