package p459j.p460a.p474c0.p491g;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.common.collect.Lists;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.action.HandleLowStorageAction;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.p488f.C11839m;
import p459j.p460a.p474c0.p488f.C11843o;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.s */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/s.class */
public class FragmentC12103s extends Fragment {

    /* renamed from: j.a.c0.g.s$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/s$a.class */
    public static class DialogFragmentC12104a extends DialogFragment {

        /* renamed from: j.a.c0.g.s$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/g/s$a$a.class */
        public class DialogInterface$OnClickListenerC12105a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC12105a(DialogFragmentC12104a aVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        }

        /* renamed from: j.a.c0.g.s$a$b */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/g/s$a$b.class */
        public class C12106b extends ArrayAdapter<String> {

            /* renamed from: j.a.c0.g.s$a$b$a */
            /* loaded from: classes2-dex2jar.jar:j/a/c0/g/s$a$b$a.class */
            public class View$OnClickListenerC12107a implements View.OnClickListener {

                /* renamed from: a */
                public final /* synthetic */ int f27188a;

                public View$OnClickListenerC12107a(int i) {
                    this.f27188a = i;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DialogFragmentC12104a.this.dismiss();
                    ((FragmentC12103s) DialogFragmentC12104a.this.getTargetFragment()).m7166a(this.f27188a);
                }
            }

            public C12106b(Context context, List<String> list) {
                super(context, (int) R$layout.sms_free_storage_action_item_view, list);
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                TextView textView = (view == null || !(view instanceof TextView)) ? (TextView) LayoutInflater.from(getContext()).inflate(R$layout.sms_free_storage_action_item_view, viewGroup, false) : (TextView) view;
                textView.setText(getItem(i));
                textView.setOnClickListener(new View$OnClickListenerC12107a(i));
                return textView;
            }
        }

        /* renamed from: a */
        public static DialogFragmentC12104a m7160a() {
            return new DialogFragmentC12104a();
        }

        @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ((FragmentC12103s) getTargetFragment()).m7167a();
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            View inflate = getActivity().getLayoutInflater().inflate(R$layout.sms_storage_low_warning_dialog, (ViewGroup) null);
            ((ListView) inflate.findViewById(R$id.free_storage_action_list)).setAdapter((ListAdapter) new C12106b(getActivity(), FragmentC12103s.m7161b(getActivity().getResources())));
            builder.setTitle(R$string.sms_storage_low_title).setView(inflate).setNegativeButton(R$string.ignore, new DialogInterface$OnClickListenerC12105a(this));
            AlertDialog create = builder.create();
            create.setCanceledOnTouchOutside(false);
            return create;
        }
    }

    /* renamed from: j.a.c0.g.s$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/s$b.class */
    public static class DialogFragmentC12108b extends DialogFragment {

        /* renamed from: a */
        public C11839m.C11840a f27190a;

        /* renamed from: b */
        public String f27191b;

        /* renamed from: j.a.c0.g.s$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/g/s$b$a.class */
        public class DialogInterface$OnClickListenerC12109a implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ int f27192a;

            public DialogInterface$OnClickListenerC12109a(int i) {
                this.f27192a = i;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DialogFragmentC12108b.this.dismiss();
                DialogFragmentC12108b.this.m7157b(this.f27192a);
                ((FragmentC12103s) DialogFragmentC12108b.this.getTargetFragment()).m7167a();
                C11843o.m8051a();
            }
        }

        /* renamed from: j.a.c0.g.s$b$b */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/g/s$b$b.class */
        public class DialogInterface$OnClickListenerC12110b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC12110b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DialogFragmentC12108b.this.dismiss();
                ((FragmentC12103s) DialogFragmentC12108b.this.getTargetFragment()).m7167a();
            }
        }

        /* renamed from: c */
        public static DialogFragmentC12108b m7156c(int i) {
            DialogFragmentC12108b bVar = new DialogFragmentC12108b();
            Bundle bundle = new Bundle();
            bundle.putInt("action_index", i);
            bVar.setArguments(bundle);
            return bVar;
        }

        /* renamed from: a */
        public final String m7159a(int i) {
            if (i == 0) {
                return getString(R$string.delete_all_media_confirmation, this.f27191b);
            }
            if (i == 1) {
                return getString(R$string.delete_oldest_messages_confirmation, this.f27191b);
            }
            if (i == 2) {
                return getString(R$string.auto_delete_oldest_messages_confirmation, this.f27191b);
            }
            throw new IllegalArgumentException("SmsStorageLowWarningFragment: invalid action index " + i);
        }

        /* renamed from: b */
        public final void m7157b(int i) {
            long a = C11839m.m8063a(this.f27190a);
            if (i == 0) {
                HandleLowStorageAction.m27711a(a);
            } else if (i != 1) {
                C12151d.m7005a("Unsupported action");
            } else {
                HandleLowStorageAction.m27710b(a);
            }
        }

        @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ((FragmentC12103s) getTargetFragment()).m7167a();
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            this.f27190a = C11839m.m8065a();
            this.f27191b = C11839m.m8062b(this.f27190a);
            int i = getArguments().getInt("action_index");
            if (i < 0 || i > 1) {
                return null;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle(R$string.sms_storage_low_title).setMessage(m7159a(i)).setNegativeButton(17039360, new DialogInterface$OnClickListenerC12110b()).setPositiveButton(17039370, new DialogInterface$OnClickListenerC12109a(i));
            return builder.create();
        }
    }

    /* renamed from: b */
    public static FragmentC12103s m7162b() {
        return new FragmentC12103s();
    }

    /* renamed from: b */
    public static List<String> m7161b(Resources resources) {
        String b = C11839m.m8062b(C11839m.m8065a());
        ArrayList a = Lists.m31133a();
        a.add(resources.getString(R$string.delete_all_media));
        a.add(resources.getString(R$string.delete_oldest_messages, b));
        return a;
    }

    /* renamed from: a */
    public final void m7167a() {
        getActivity().finish();
    }

    /* renamed from: a */
    public final void m7166a(int i) {
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        DialogFragmentC12108b c = DialogFragmentC12108b.m7156c(i);
        c.setTargetFragment(this, 0);
        c.show(beginTransaction, (String) null);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        DialogFragmentC12104a a = DialogFragmentC12104a.m7160a();
        a.setTargetFragment(this, 0);
        a.show(beginTransaction, (String) null);
    }
}
