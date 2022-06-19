package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0608b;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.rengwuxian.materialedittext.MaterialEditText;
import java.util.Objects;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3409y;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPin.class */
public class FragmentPin extends Fragment {

    /* renamed from: a */
    public Unbinder f7511a;
    @BindView
    public MaterialEditText pinEdit;
    @BindView
    public TextView versionTV;

    /* renamed from: com.mglab.scm.visual.FragmentPin$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPin$b.class */
    public class C2053b implements TextWatcher {
        public C2053b(C2052a c2052a) {
            FragmentPin.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String.valueOf(charSequence);
            String valueOf = String.valueOf(charSequence);
            String str = "";
            String m3055d0 = C2780h.m3055d0(FragmentPin.this.getContext(), "psetasnip", "");
            if (!m3055d0.isEmpty()) {
                str = C2779g.m3111d("lfTY9y7#bhZA4qf8", m3055d0);
            }
            if (valueOf.equals(str)) {
                C0748b.m7409b().m7404g(new C3409y("correct pin"));
            }
        }
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: a */
    public final void m3945a(int i) {
        if (i == 10) {
            this.pinEdit.setText("");
        } else if (i != -1) {
            MaterialEditText materialEditText = this.pinEdit;
            materialEditText.setText(((Object) this.pinEdit.getText()) + String.valueOf(i));
        } else {
            Editable text = this.pinEdit.getText();
            Objects.requireNonNull(text);
            if (text.length() <= 0) {
                return;
            }
            MaterialEditText materialEditText2 = this.pinEdit;
            materialEditText2.setText(materialEditText2.getText().subSequence(0, this.pinEdit.getText().length() - 1));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492957, viewGroup, false);
        this.f7511a = ButterKnife.m7385a(this, inflate);
        String string = getString(2131821069);
        String str = string;
        if (C2779g.m3090y()) {
            StringBuilder m7624k = C0608b.m7624k(string, " ");
            m7624k.append(getString(2131820953));
            str = m7624k.toString();
        }
        this.versionTV.setText(str);
        this.pinEdit.requestFocus();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7511a.mo3937a();
    }

    @OnClick
    public void onKey0Click() {
        m3945a(0);
    }

    @OnClick
    public void onKey1Click() {
        m3945a(1);
    }

    @OnClick
    public void onKey2Click() {
        m3945a(2);
    }

    @OnClick
    public void onKey3Click() {
        m3945a(3);
    }

    @OnClick
    public void onKey4Click() {
        m3945a(4);
    }

    @OnClick
    public void onKey5Click() {
        m3945a(5);
    }

    @OnClick
    public void onKey6Click() {
        m3945a(6);
    }

    @OnClick
    public void onKey7Click() {
        m3945a(7);
    }

    @OnClick
    public void onKey8Click() {
        m3945a(8);
    }

    @OnClick
    public void onKey9Click() {
        m3945a(9);
    }

    @OnClick
    public void onKeyCClick() {
        m3945a(10);
    }

    @OnClick
    public void onKeyLessClick() {
        m3945a(-1);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.findItem(2131296318).setVisible(false);
        menu.findItem(2131296326).setVisible(false);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.pinEdit.setText("");
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        requireActivity().setTitle(2131820591);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820591);
        }
        this.pinEdit.setFocusable(false);
        this.pinEdit.addTextChangedListener(new C2053b(null));
    }
}
