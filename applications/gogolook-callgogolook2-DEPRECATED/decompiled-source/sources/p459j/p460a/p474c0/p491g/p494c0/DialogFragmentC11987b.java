package p459j.p460a.p474c0.p491g.p494c0;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.os.Bundle;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.p078ui.ListEmptyView;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p478y.C11606d;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p491g.p494c0.C11983a;
/* renamed from: j.a.c0.g.c0.b */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/b.class */
public class DialogFragmentC11987b extends DialogFragment implements C11606d.AbstractC11607a, C11983a.AbstractC11984a {

    /* renamed from: a */
    public final C11589c<C11606d> f26876a = AbstractC11590d.m9040a(this);

    /* renamed from: b */
    public RecyclerView f26877b;

    /* renamed from: c */
    public ListEmptyView f26878c;

    /* renamed from: d */
    public C11983a f26879d;

    /* renamed from: e */
    public AbstractC11990c f26880e;

    /* renamed from: f */
    public boolean f26881f;

    /* renamed from: j.a.c0.g.c0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/b$a.class */
    public class C11988a extends LinearLayoutManager {
        public C11988a(DialogFragmentC11987b bVar, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public RecyclerView.LayoutParams generateDefaultLayoutParams() {
            return new RecyclerView.LayoutParams(-1, -2);
        }
    }

    /* renamed from: j.a.c0.g.c0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/b$b.class */
    public class DialogInterface$OnClickListenerC11989b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11989b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DialogFragmentC11987b.this.f26881f = true;
            DialogFragmentC11987b.this.f26880e.mo7629a();
        }
    }

    /* renamed from: j.a.c0.g.c0.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/b$c.class */
    public interface AbstractC11990c {
        /* renamed from: a */
        void mo7629a();

        /* renamed from: a */
        void mo7628a(C11608e eVar);
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11606d.AbstractC11607a
    /* renamed from: a */
    public void mo7636a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11606d.AbstractC11607a
    /* renamed from: a */
    public void mo7635a(C11606d dVar, Cursor cursor) {
        this.f26876a.mo9034a((C11589c<C11606d>) dVar);
        this.f26879d.m7204a(cursor);
        m7630b(cursor == null || cursor.getCount() == 0);
    }

    @Override // p459j.p460a.p474c0.p491g.p494c0.C11983a.AbstractC11984a
    /* renamed from: a */
    public void mo7634a(C11608e eVar) {
        this.f26880e.mo7628a(eVar);
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11606d.AbstractC11607a
    /* renamed from: a */
    public void mo7631a(boolean z) {
    }

    /* renamed from: b */
    public final void m7630b(boolean z) {
        if (z) {
            this.f26878c.m27363b(R$string.conversation_list_empty_text);
            this.f26878c.setVisibility(0);
            return;
        }
        this.f26878c.setVisibility(8);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof AbstractC11990c) {
            this.f26880e = (AbstractC11990c) activity;
        }
        this.f26876a.mo9038b((C11589c<C11606d>) AbstractC11528g.m9259k().mo9252a(activity, this, 0));
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        View inflate = activity.getLayoutInflater().inflate(R$layout.share_intent_conversation_list_view, (ViewGroup) null);
        this.f26878c = (ListEmptyView) inflate.findViewById(R$id.no_conversations_view);
        this.f26878c.m27364a(R$drawable.ic_oobe_conv_list);
        C11988a aVar = new C11988a(this, activity);
        this.f26876a.mo9033b().m8965a(getLoaderManager(), this.f26876a);
        this.f26879d = new C11983a(activity, null, this);
        this.f26877b = (RecyclerView) inflate.findViewById(16908298);
        this.f26877b.setLayoutManager(aVar);
        this.f26877b.setHasFixedSize(true);
        this.f26877b.setAdapter(this.f26879d);
        AlertDialog.Builder title = new AlertDialog.Builder(activity).setView(inflate).setTitle(R$string.share_intent_activity_label);
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.getBoolean("hide_conv_button_key")) {
            title.setPositiveButton(R$string.share_new_message, new DialogInterface$OnClickListenerC11989b());
        }
        return title.setNegativeButton(R$string.share_cancel, (DialogInterface.OnClickListener) null).create();
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f26876a.m9042e();
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Activity activity;
        if (!this.f26881f && (activity = getActivity()) != null) {
            activity.finish();
        }
    }
}
