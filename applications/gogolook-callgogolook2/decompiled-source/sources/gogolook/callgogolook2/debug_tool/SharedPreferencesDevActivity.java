package gogolook.callgogolook2.debug_tool;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.Person;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.debug_tool.module.BaseActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p554q.DialogInterface$OnClickListenerC13355a;
import p459j.p460a.p554q.p555c.AbstractC13357a;
import p459j.p460a.p554q.p555c.AbstractC13363b;
import p459j.p460a.p554q.p555c.C13366c;
import p459j.p460a.p554q.p557e.C13374d;
import p459j.p460a.p554q.p559g.AbstractC13379b;
import p626l.C14976h;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� !2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002!\"B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014JC\u0010\u0011\u001a\u00020\r28\b\u0004\u0010\u0012\u001a2\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\r0\u0013H\u0096\bJ\u0016\u0010\u001a\u001a\u00020\r2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0\u001cH\u0016J>\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142#\b\u0004\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\r0\u001fH\u0096\bJ\b\u0010 \u001a\u00020\rH\u0016R\u0012\u0010\u0005\u001a\u00060\u0006R\u00020��X\u0082.¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n��¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity;", "Lgogolook/callgogolook2/debug_tool/module/BaseActivity;", "Lgogolook/callgogolook2/debug_tool/presenter/SharedPreferencesDevPresenter;", "Lgogolook/callgogolook2/debug_tool/view/ISharedPreferencesDevView;", "()V", "dataAdapter", "Lgogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$PrefDataAdapter;", "dataList", "", "Lgogolook/callgogolook2/debug_tool/data/UiData;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "initViews", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "showAddDialog", "add", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", Person.KEY_KEY, "Lgogolook/callgogolook2/debug_tool/data/EditDataType;", C13032a.f29462d, "showConfirmResetDialog", "action", "Lkotlin/Function0;", "showEditDialog", "edit", "Lkotlin/Function1;", "updateAllPrefData", "Companion", "PrefDataAdapter", "whoscall_core_debugTool_release"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity.class */
public final class SharedPreferencesDevActivity extends BaseActivity<C13374d> implements AbstractC13379b {

    /* renamed from: b */
    public C4453b f10731b;

    /* renamed from: c */
    public final List<AbstractC13363b> f10732c = new ArrayList();

    /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$a.class */
    public static final class C4452a {
        public C4452a() {
        }

        public /* synthetic */ C4452a(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u000f\u0010B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$PrefDataAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "(Lgogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity;)V", "getItemCount", "", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "DataViewHolder", "HeaderViewHolder", "whoscall_core_debugTool_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b.class */
    public final class C4453b extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$a.class */
        public final class C4454a extends RecyclerView.ViewHolder {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4454a(C4453b bVar, ViewGroup viewGroup) {
                super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.list_item_shared_pref_data, viewGroup, false));
                C15149k.m377b(viewGroup, "parent");
            }
        }

        /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$b */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$b.class */
        public final class C4455b extends RecyclerView.ViewHolder {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4455b(C4453b bVar, ViewGroup viewGroup) {
                super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.list_item_shared_pref_header, viewGroup, false));
                C15149k.m377b(viewGroup, "parent");
            }
        }

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, m815d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$PrefDataAdapter$onBindViewHolder$1$1"}, m814k = 3, m813mv = {1, 1, 13})
        /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$c */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$c.class */
        public static final class View$OnClickListenerC4456c implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ View f10734a;

            /* renamed from: b */
            public final /* synthetic */ C4453b f10735b;

            /* renamed from: c */
            public final /* synthetic */ AbstractC13363b.C13365b f10736c;

            /* renamed from: d */
            public final /* synthetic */ int f10737d;

            @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007¨\u0006\b"}, m815d2 = {"<anonymous>", "", "dialog", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "which", "", "onClick", "gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$PrefDataAdapter$onBindViewHolder$1$1$1"}, m814k = 3, m813mv = {1, 1, 13})
            /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$c$a */
            /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$c$a.class */
            public static final class DialogInterface$OnClickListenerC4457a implements DialogInterface.OnClickListener {

                /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$c$a$a */
                /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$c$a$a.class */
                public static final class DialogInterface$OnClickListenerC4458a implements DialogInterface.OnClickListener {

                    /* renamed from: a */
                    public final /* synthetic */ SharedPreferencesDevActivity f10739a;

                    /* renamed from: b */
                    public final /* synthetic */ EditText f10740b;

                    /* renamed from: c */
                    public final /* synthetic */ EditText f10741c;

                    /* renamed from: d */
                    public final /* synthetic */ RadioGroup f10742d;

                    /* renamed from: e */
                    public final /* synthetic */ DialogInterface$OnClickListenerC4457a f10743e;

                    public DialogInterface$OnClickListenerC4458a(SharedPreferencesDevActivity sharedPreferencesDevActivity, EditText editText, EditText editText2, RadioGroup radioGroup, DialogInterface$OnClickListenerC4457a aVar) {
                        this.f10740b = editText;
                        this.f10741c = editText2;
                        this.f10742d = radioGroup;
                        this.f10743e = aVar;
                        this.f10739a = sharedPreferencesDevActivity;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        EditText editText = this.f10740b;
                        C15149k.m383a((Object) editText, "edtValue");
                        String obj = editText.getText().toString();
                        EditText editText2 = this.f10741c;
                        C15149k.m383a((Object) editText2, "edtKey");
                        String obj2 = editText2.getText().toString();
                        try {
                            RadioGroup radioGroup = this.f10742d;
                            C15149k.m383a((Object) radioGroup, "rbgDataType");
                            int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                            AbstractC13357a bVar = checkedRadioButtonId == R$id.rbInt ? new AbstractC13357a.C13359b(Integer.parseInt(obj)) : checkedRadioButtonId == R$id.rbLong ? new AbstractC13357a.C13360c(Long.parseLong(obj)) : checkedRadioButtonId == R$id.rbString ? new AbstractC13357a.C13361d(obj) : checkedRadioButtonId == R$id.rbBoolean ? new AbstractC13357a.C13358a(Boolean.parseBoolean(obj)) : new AbstractC13357a.C13362e("");
                            SharedPreferencesDevActivity.this.m28609D().m4115a(View$OnClickListenerC4456c.this.f10736c.m4123a(), obj2, C13366c.m4122a(bVar));
                            SharedPreferencesDevActivity.this.f10732c.add(View$OnClickListenerC4456c.this.f10737d + 1, new AbstractC13363b.C13364a(obj2, View$OnClickListenerC4456c.this.f10736c.m4123a(), bVar));
                            SharedPreferencesDevActivity.this.m28611F();
                        } catch (NumberFormatException e) {
                            Toast.makeText(this.f10739a, "Format Error", 0).show();
                        }
                        dialogInterface.dismiss();
                    }
                }

                public DialogInterface$OnClickListenerC4457a() {
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        SharedPreferencesDevActivity sharedPreferencesDevActivity = SharedPreferencesDevActivity.this;
                        View inflate = sharedPreferencesDevActivity.getLayoutInflater().inflate(R$layout.dialog_add_pref_data, (ViewGroup) null);
                        EditText editText = (EditText) inflate.findViewById(R$id.edtKey);
                        new AlertDialog.Builder(sharedPreferencesDevActivity).setView(inflate).setPositiveButton("Add", new DialogInterface$OnClickListenerC4458a(sharedPreferencesDevActivity, (EditText) inflate.findViewById(R$id.edtVal), editText, (RadioGroup) inflate.findViewById(R$id.rbgDataType), this)).setNegativeButton("Cancel", DialogInterface$OnClickListenerC13355a.f30081a).create().show();
                    }
                    dialogInterface.dismiss();
                }
            }

            public View$OnClickListenerC4456c(View view, C4453b bVar, AbstractC13363b.C13365b bVar2, int i) {
                this.f10734a = view;
                this.f10735b = bVar;
                this.f10736c = bVar2;
                this.f10737d = i;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                new AlertDialog.Builder(this.f10734a.getContext()).setItems(R$array.pref_object_action, new DialogInterface$OnClickListenerC4457a()).create().show();
            }
        }

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, m815d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$PrefDataAdapter$onBindViewHolder$2$1"}, m814k = 3, m813mv = {1, 1, 13})
        /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$d */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$d.class */
        public static final class View$OnClickListenerC4459d implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ View f10744a;

            /* renamed from: b */
            public final /* synthetic */ C4453b f10745b;

            /* renamed from: c */
            public final /* synthetic */ AbstractC13363b.C13364a f10746c;

            /* renamed from: d */
            public final /* synthetic */ int f10747d;

            @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007¨\u0006\b"}, m815d2 = {"<anonymous>", "", "dialog", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "which", "", "onClick", "gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$PrefDataAdapter$onBindViewHolder$2$1$1"}, m814k = 3, m813mv = {1, 1, 13})
            /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$d$a */
            /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$d$a.class */
            public static final class DialogInterface$OnClickListenerC4460a implements DialogInterface.OnClickListener {

                /* renamed from: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity$b$d$a$a */
                /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity$b$d$a$a.class */
                public static final class DialogInterface$OnClickListenerC4461a implements DialogInterface.OnClickListener {

                    /* renamed from: a */
                    public final /* synthetic */ C15164z f10749a;

                    /* renamed from: b */
                    public final /* synthetic */ DialogInterface$OnClickListenerC4460a f10750b;

                    public DialogInterface$OnClickListenerC4461a(C15164z zVar, DialogInterface$OnClickListenerC4460a aVar) {
                        this.f10749a = zVar;
                        this.f10750b = aVar;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        String obj = ((EditText) this.f10749a.f33152a).getText().toString();
                        C13374d D = SharedPreferencesDevActivity.this.m28609D();
                        String c = View$OnClickListenerC4459d.this.f10746c.m4124c();
                        String b = View$OnClickListenerC4459d.this.f10746c.m4125b();
                        if (b == null) {
                            b = "";
                        }
                        D.m4115a(c, b, C13366c.m4121a(View$OnClickListenerC4459d.this.f10746c.m4127a(), obj));
                        View$OnClickListenerC4459d.this.f10746c.m4126a(C13366c.m4120a(obj));
                        List list = SharedPreferencesDevActivity.this.f10732c;
                        View$OnClickListenerC4459d dVar = View$OnClickListenerC4459d.this;
                        list.set(dVar.f10747d, dVar.f10746c);
                        SharedPreferencesDevActivity.this.m28611F();
                        dialogInterface.dismiss();
                    }
                }

                public DialogInterface$OnClickListenerC4460a() {
                }

                /* JADX WARN: Type inference failed for: r0v59, types: [T, android.widget.EditText] */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // android.content.DialogInterface.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void onClick(android.content.DialogInterface r8, int r9) {
                    /*
                        Method dump skipped, instructions count: 318
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity.C4453b.View$OnClickListenerC4459d.DialogInterface$OnClickListenerC4460a.onClick(android.content.DialogInterface, int):void");
                }
            }

            public View$OnClickListenerC4459d(View view, C4453b bVar, AbstractC13363b.C13364a aVar, int i) {
                this.f10744a = view;
                this.f10745b = bVar;
                this.f10746c = aVar;
                this.f10747d = i;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                new AlertDialog.Builder(this.f10744a.getContext()).setItems(R$array.pref_item_action, new DialogInterface$OnClickListenerC4460a()).create().show();
            }
        }

        public C4453b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SharedPreferencesDevActivity.this.f10732c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int i2;
            AbstractC13363b bVar = (AbstractC13363b) SharedPreferencesDevActivity.this.f10732c.get(i);
            if (bVar instanceof AbstractC13363b.C13365b) {
                i2 = 1;
            } else if (bVar instanceof AbstractC13363b.C13364a) {
                i2 = 2;
            } else {
                throw new C14976h();
            }
            return i2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x00f4, code lost:
            if (r9 != null) goto L_0x00fd;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r9, int r10) {
            /*
                Method dump skipped, instructions count: 290
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity.C4453b.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            C15149k.m377b(viewGroup, "parent");
            return i != 1 ? i != 2 ? new C4454a(this, viewGroup) : new C4454a(this, viewGroup) : new C4455b(this, viewGroup);
        }
    }

    static {
        new C4452a(null);
    }

    /* renamed from: E */
    public void m28612E() {
        Bundle extras;
        setContentView(R$layout.activity_shared_pref_dev);
        List<AbstractC13363b> list = this.f10732c;
        C13374d D = m28609D();
        Context applicationContext = getApplicationContext();
        C15149k.m383a((Object) applicationContext, "applicationContext");
        Intent intent = getIntent();
        list.addAll(D.m4117a(applicationContext, (intent == null || (extras = intent.getExtras()) == null) ? null : extras.getStringArray("key_pref_names")));
        this.f10731b = new C4453b();
        View findViewById = findViewById(R$id.recycler_view_shared_pref);
        RecyclerView recyclerView = (RecyclerView) findViewById;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(recyclerView.getContext(), 1);
        Drawable drawable = ContextCompat.getDrawable(recyclerView.getContext(), R$drawable.divider);
        if (drawable != null) {
            dividerItemDecoration.setDrawable(drawable);
            recyclerView.addItemDecoration(dividerItemDecoration);
            C4453b bVar = this.f10731b;
            if (bVar != null) {
                recyclerView.setAdapter(bVar);
                C15149k.m383a((Object) findViewById, "findViewById<RecyclerVie…r = dataAdapter\n        }");
                return;
            }
            C15149k.m373d("dataAdapter");
            throw null;
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: F */
    public void m28611F() {
        C4453b bVar = this.f10731b;
        if (bVar != null) {
            bVar.notifyDataSetChanged();
        } else {
            C15149k.m373d("dataAdapter");
            throw null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28608a((SharedPreferencesDevActivity) new C13374d(this));
        m28612E();
        m28611F();
    }
}
