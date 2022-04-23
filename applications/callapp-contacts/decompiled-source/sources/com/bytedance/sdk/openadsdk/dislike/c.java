package com.bytedance.sdk.openadsdk.dislike;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c.class */
public class c extends TTDislikeDialogAbstract {

    /* renamed from: a  reason: collision with root package name */
    private TTDislikeListView f9482a;

    /* renamed from: b  reason: collision with root package name */
    private TTDislikeListView f9483b;

    /* renamed from: c  reason: collision with root package name */
    private RelativeLayout f9484c;

    /* renamed from: d  reason: collision with root package name */
    private View f9485d;
    private b e;
    private b f;
    private i g;
    private a h;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c$a.class */
    public interface a {
        void a();

        void a(int i, FilterWord filterWord);

        void b();

        void c();
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c$b.class */
    public static class b extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f9491a = true;

        /* renamed from: b  reason: collision with root package name */
        private final List<FilterWord> f9492b;

        /* renamed from: c  reason: collision with root package name */
        private final LayoutInflater f9493c;

        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c$b$a.class */
        static class a {

            /* renamed from: a  reason: collision with root package name */
            TextView f9494a;

            /* renamed from: b  reason: collision with root package name */
            ImageView f9495b;

            private a() {
            }
        }

        public b(LayoutInflater layoutInflater, List<FilterWord> list) {
            this.f9492b = list;
            this.f9493c = layoutInflater;
        }

        public void a() {
            this.f9492b.clear();
            notifyDataSetChanged();
        }

        public void a(List<FilterWord> list) {
            if (list != null && !list.isEmpty()) {
                this.f9492b.clear();
                this.f9492b.addAll(list);
                notifyDataSetChanged();
            }
        }

        public void a(boolean z) {
            this.f9491a = z;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<FilterWord> list = this.f9492b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f9492b.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                a aVar2 = new a();
                LayoutInflater layoutInflater = this.f9493c;
                View inflate = layoutInflater.inflate(x.f(layoutInflater.getContext(), "tt_dialog_listview_item"), viewGroup, false);
                aVar2.f9494a = (TextView) inflate.findViewById(x.e(this.f9493c.getContext(), "tt_item_tv"));
                aVar2.f9495b = (ImageView) inflate.findViewById(x.e(this.f9493c.getContext(), "tt_item_arrow"));
                inflate.setTag(aVar2);
                aVar = aVar2;
                view = inflate;
            } else {
                aVar = (a) view.getTag();
            }
            FilterWord filterWord = this.f9492b.get(i);
            aVar.f9494a.setText(filterWord.getName());
            if (i != this.f9492b.size() - 1) {
                aVar.f9494a.setBackgroundResource(x.d(this.f9493c.getContext(), "tt_dislike_middle_seletor"));
            } else {
                aVar.f9494a.setBackgroundResource(x.d(this.f9493c.getContext(), "tt_dislike_bottom_seletor"));
            }
            if (this.f9491a && i == 0) {
                aVar.f9494a.setBackgroundResource(x.d(this.f9493c.getContext(), "tt_dislike_top_seletor"));
            }
            if (filterWord.hasSecondOptions()) {
                aVar.f9495b.setVisibility(0);
            } else {
                aVar.f9495b.setVisibility(8);
            }
            return view;
        }
    }

    public c(Context context, i iVar) {
        super(context, x.g(context, "tt_dislikeDialog"));
        this.g = iVar;
    }

    private void a() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.y = 50;
            window.setAttributes(attributes);
        }
    }

    private void a(Context context) {
        this.f9484c = (RelativeLayout) findViewById(x.e(getContext(), "tt_dislike_title_content"));
        this.f9485d = findViewById(x.e(getContext(), "tt_dislike_line1"));
        findViewById(x.e(getContext(), "tt_dislike_header_back")).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.c();
                if (c.this.h != null) {
                    c.this.h.c();
                }
            }
        });
        TTDislikeListView tTDislikeListView = (TTDislikeListView) findViewById(x.e(getContext(), "tt_filer_words_lv"));
        this.f9482a = tTDislikeListView;
        tTDislikeListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    FilterWord filterWord = (FilterWord) adapterView.getAdapter().getItem(i);
                    if (filterWord.hasSecondOptions()) {
                        c.this.a(filterWord);
                        if (c.this.h != null) {
                            c.this.h.a(i, filterWord);
                            return;
                        }
                        return;
                    }
                } catch (Throwable th) {
                }
                if (c.this.h != null) {
                    try {
                        c.this.h.a(i, c.this.g.U().get(i));
                    } catch (Throwable th2) {
                    }
                }
                c.this.dismiss();
            }
        });
        TTDislikeListView tTDislikeListView2 = (TTDislikeListView) findViewById(x.e(getContext(), "tt_filer_words_lv_second"));
        this.f9483b = tTDislikeListView2;
        tTDislikeListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (c.this.h != null) {
                    try {
                        c.this.h.a(i, (FilterWord) adapterView.getAdapter().getItem(i));
                    } catch (Throwable th) {
                    }
                }
                c.this.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FilterWord filterWord) {
        if (filterWord != null) {
            b bVar = this.f;
            if (bVar != null) {
                bVar.a(filterWord.getOptions());
            }
            RelativeLayout relativeLayout = this.f9484c;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
            View view = this.f9485d;
            if (view != null) {
                view.setVisibility(0);
            }
            TTDislikeListView tTDislikeListView = this.f9482a;
            if (tTDislikeListView != null) {
                tTDislikeListView.setVisibility(8);
            }
            TTDislikeListView tTDislikeListView2 = this.f9483b;
            if (tTDislikeListView2 != null) {
                tTDislikeListView2.setVisibility(0);
            }
        }
    }

    private void b() {
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                if (c.this.h != null) {
                    c.this.h.a();
                }
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (c.this.h != null) {
                    c.this.h.b();
                }
            }
        });
        b bVar = new b(getLayoutInflater(), this.g.U());
        this.e = bVar;
        this.f9482a.setAdapter((ListAdapter) bVar);
        b bVar2 = new b(getLayoutInflater(), new ArrayList());
        this.f = bVar2;
        bVar2.a(false);
        this.f9483b.setAdapter((ListAdapter) this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        RelativeLayout relativeLayout = this.f9484c;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.f9485d;
        if (view != null) {
            view.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView = this.f9482a;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(0);
        }
        b bVar = this.f;
        if (bVar != null) {
            bVar.a();
        }
        TTDislikeListView tTDislikeListView2 = this.f9483b;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(8);
        }
    }

    public void a(i iVar) {
        b bVar = this.e;
        if (bVar != null && iVar != null) {
            this.g = iVar;
            bVar.a(iVar.U());
            setMaterialMeta(this.g);
        }
    }

    public void a(a aVar) {
        this.h = aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public int getLayoutId() {
        return x.f(getContext(), "tt_dislike_dialog_layout");
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(ag.c(getContext()) - 120, -2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public int[] getTTDislikeListViewIds() {
        return new int[]{x.e(getContext(), "tt_filer_words_lv"), x.e(getContext(), "tt_filer_words_lv_second")};
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        a();
        a(getContext());
        b();
        setMaterialMeta(this.g);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        c();
    }
}
