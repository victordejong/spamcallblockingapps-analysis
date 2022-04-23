package com.scand.realmbrowser;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import io.realm.RealmObject;
import java.lang.reflect.Field;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/FieldFilterDialogFragment.class */
public class FieldFilterDialogFragment extends DialogFragment {

    /* renamed from: f */
    private Class f12504f;

    /* renamed from: g */
    private List<Field> f12505g;

    /* renamed from: i */
    private FieldFilterDialogInteraction f12507i;

    /* renamed from: j */
    private String f12508j;

    /* renamed from: k */
    private String f12509k;

    /* renamed from: h */
    private boolean[] f12506h = null;

    /* renamed from: l */
    private final DialogInterface.OnMultiChoiceClickListener f12510l = new DialogInterface.OnMultiChoiceClickListener() { // from class: com.scand.realmbrowser.FieldFilterDialogFragment.2
        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public void onClick(DialogInterface dialogInterface, int i, boolean z) {
            FieldFilterDialogFragment.this.f12506h[i] = z;
            FieldFilterDialogFragment.this.m7744O0();
        }
    };

    /* renamed from: m */
    private final DialogInterface.OnClickListener f12511m = new DialogInterface.OnClickListener() { // from class: com.scand.realmbrowser.FieldFilterDialogFragment.3
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FieldFilterPreferences b = FieldFilterPreferences.m7741b(FieldFilterDialogFragment.this.getActivity());
            for (int i2 = 0; i2 < FieldFilterDialogFragment.this.f12506h.length; i2++) {
                b.m7739d(FieldFilterDialogFragment.this.f12504f, (Field) FieldFilterDialogFragment.this.f12505g.get(i2), FieldFilterDialogFragment.this.f12506h[i2]);
            }
            FieldFilterDialogFragment.this.f12507i.mo7743r0();
        }
    };

    /* renamed from: n */
    private final DialogInterface.OnClickListener f12512n = new DialogInterface.OnClickListener(this) { // from class: com.scand.realmbrowser.FieldFilterDialogFragment.4
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    };

    /* renamed from: o */
    private final View.OnClickListener f12513o = new View.OnClickListener() { // from class: com.scand.realmbrowser.FieldFilterDialogFragment.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = !((Button) view).getText().toString().equals(FieldFilterDialogFragment.this.f12508j);
            ListView f = ((AlertDialog) FieldFilterDialogFragment.this.getDialog()).m22278f();
            for (int i = 0; i < FieldFilterDialogFragment.this.f12506h.length; i++) {
                FieldFilterDialogFragment.this.f12506h[i] = z;
                f.setItemChecked(i, z);
            }
            FieldFilterDialogFragment.this.m7744O0();
        }
    };

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/FieldFilterDialogFragment$FieldFilterDialogInteraction.class */
    interface FieldFilterDialogInteraction {
        /* renamed from: r0 */
        void mo7743r0();
    }

    /* renamed from: N0 */
    public static FieldFilterDialogFragment m7745N0(Class<? extends RealmObject> cls) {
        Bundle bundle = new Bundle();
        bundle.putString("canonical class name", cls.getCanonicalName());
        FieldFilterDialogFragment fieldFilterDialogFragment = new FieldFilterDialogFragment();
        fieldFilterDialogFragment.setArguments(bundle);
        return fieldFilterDialogFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public void m7744O0() {
        boolean z = false;
        int i = 0;
        while (true) {
            boolean[] zArr = this.f12506h;
            if (i >= zArr.length) {
                z = true;
                break;
            } else if (!zArr[i]) {
                break;
            } else {
                i++;
            }
        }
        ((AlertDialog) getDialog()).m22279e(-3).setText(z ? this.f12508j : this.f12509k);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f12507i = (FieldFilterDialogInteraction) activity;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f12508j = getResources().getString(C1506R.string.realm_browser_deselect_all);
        this.f12509k = getResources().getString(C1506R.string.realm_browser_select_all);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        CharSequence[] charSequenceArr;
        ClassNotFoundException e;
        String string = getArguments().getString("canonical class name");
        FieldFilterPreferences b = FieldFilterPreferences.m7741b(getActivity());
        try {
            Class<?> cls = Class.forName(string);
            this.f12504f = cls;
            List<Field> h = RealmUtils.m7711h(cls);
            this.f12505g = h;
            charSequenceArr = new CharSequence[h.size()];
        } catch (ClassNotFoundException e2) {
            e = e2;
            charSequenceArr = null;
        }
        try {
            this.f12506h = new boolean[this.f12505g.size()];
            int i = 0;
            while (true) {
                charSequenceArr = charSequenceArr;
                if (i >= this.f12505g.size()) {
                    break;
                }
                Field field = this.f12505g.get(i);
                charSequenceArr[i] = field.getName();
                this.f12506h[i] = b.m7740c(this.f12504f, field);
                i++;
            }
        } catch (ClassNotFoundException e3) {
            e = e3;
            e.printStackTrace();
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.mo9813l(C1506R.string.realm_browser_field_filter_dialog_title);
            builder.mo9819f(charSequenceArr, this.f12506h, this.f12510l);
            builder.mo9815j(C1506R.string.realm_browser_ok, this.f12511m);
            builder.mo9818g(C1506R.string.realm_browser_cancel, this.f12512n);
            builder.mo9817h(C1506R.string.realm_browser_deselect_all, null);
            AlertDialog a = builder.mo9823a();
            a.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.scand.realmbrowser.FieldFilterDialogFragment.1
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    ((AlertDialog) FieldFilterDialogFragment.this.getDialog()).m22279e(-3).setOnClickListener(FieldFilterDialogFragment.this.f12513o);
                    FieldFilterDialogFragment.this.m7744O0();
                }
            });
            return a;
        }
        AlertDialog.Builder builder2 = new AlertDialog.Builder(getActivity());
        builder2.mo9813l(C1506R.string.realm_browser_field_filter_dialog_title);
        builder2.mo9819f(charSequenceArr, this.f12506h, this.f12510l);
        builder2.mo9815j(C1506R.string.realm_browser_ok, this.f12511m);
        builder2.mo9818g(C1506R.string.realm_browser_cancel, this.f12512n);
        builder2.mo9817h(C1506R.string.realm_browser_deselect_all, null);
        AlertDialog a2 = builder2.mo9823a();
        a2.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.scand.realmbrowser.FieldFilterDialogFragment.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                ((AlertDialog) FieldFilterDialogFragment.this.getDialog()).m22279e(-3).setOnClickListener(FieldFilterDialogFragment.this.f12513o);
                FieldFilterDialogFragment.this.m7744O0();
            }
        });
        return a2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f12507i = null;
    }
}
