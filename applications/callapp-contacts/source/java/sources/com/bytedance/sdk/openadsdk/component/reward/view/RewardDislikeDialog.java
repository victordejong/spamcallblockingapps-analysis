package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.DialogC4854c;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog.class */
public class RewardDislikeDialog extends FrameLayout {

    /* renamed from: a */
    private View f16242a;

    /* renamed from: b */
    private TTDislikeListView f16243b;

    /* renamed from: c */
    private TTDislikeListView f16244c;

    /* renamed from: d */
    private RelativeLayout f16245d;

    /* renamed from: e */
    private View f16246e;

    /* renamed from: f */
    private DialogC4854c.C4861b f16247f;

    /* renamed from: g */
    private DialogC4854c.C4861b f16248g;

    /* renamed from: h */
    private C4557i f16249h;

    /* renamed from: i */
    private AbstractC4458a f16250i;

    /* renamed from: j */
    private boolean f16251j;

    /* renamed from: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a.class */
    public interface AbstractC4458a {
        /* renamed from: a */
        void mo35527a(int i, FilterWord filterWord);

        /* renamed from: a */
        void mo35526a(View view);

        /* renamed from: b */
        void mo35525b(View view);

        /* renamed from: c */
        void mo35524c(View view);
    }

    public RewardDislikeDialog(Context context) {
        this(context, (AttributeSet) null);
    }

    public RewardDislikeDialog(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RewardDislikeDialog(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16251j = false;
        m35537a(context, attributeSet);
    }

    public RewardDislikeDialog(Context context, C4557i c4557i) {
        this(context);
        this.f16249h = c4557i;
        m35531c();
    }

    /* renamed from: a */
    private void m35537a(Context context, AttributeSet attributeSet) {
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RewardDislikeDialog.this.m35533b();
            }
        });
        setBackgroundColor(Color.parseColor("#80000000"));
        this.f16242a = LayoutInflater.from(context).inflate(C5486x.m32065f(context, "tt_dislike_dialog_layout"), (ViewGroup) this, false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        layoutParams.leftMargin = C5443ag.m32217c(getContext(), 20.0f);
        layoutParams.rightMargin = C5443ag.m32217c(getContext(), 20.0f);
        this.f16242a.setLayoutParams(layoutParams);
        this.f16242a.setClickable(true);
        m35529d();
        m35531c();
    }

    /* renamed from: a */
    public void m35536a(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        DialogC4854c.C4861b c4861b = this.f16248g;
        if (c4861b != null) {
            c4861b.m33719a(filterWord.getOptions());
        }
        RelativeLayout relativeLayout = this.f16245d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        View view = this.f16246e;
        if (view != null) {
            view.setVisibility(0);
        }
        TTDislikeListView tTDislikeListView = this.f16243b;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView2 = this.f16244c;
        if (tTDislikeListView2 == null) {
            return;
        }
        tTDislikeListView2.setVisibility(0);
    }

    /* renamed from: c */
    private void m35531c() {
        if (this.f16249h == null) {
            return;
        }
        LayoutInflater from = LayoutInflater.from(getContext());
        DialogC4854c.C4861b c4861b = new DialogC4854c.C4861b(from, this.f16249h.m35226U());
        this.f16247f = c4861b;
        this.f16243b.setAdapter((ListAdapter) c4861b);
        DialogC4854c.C4861b c4861b2 = new DialogC4854c.C4861b(from, new ArrayList());
        this.f16248g = c4861b2;
        c4861b2.m33718a(false);
        this.f16244c.setAdapter((ListAdapter) this.f16248g);
        this.f16243b.setMaterialMeta(this.f16249h);
        this.f16244c.setMaterialMeta(this.f16249h);
    }

    /* renamed from: d */
    private void m35529d() {
        this.f16245d = (RelativeLayout) this.f16242a.findViewById(C5486x.m32066e(getContext(), "tt_dislike_title_content"));
        this.f16246e = this.f16242a.findViewById(C5486x.m32066e(getContext(), "tt_dislike_line1"));
        this.f16242a.findViewById(C5486x.m32066e(getContext(), "tt_dislike_header_back")).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RewardDislikeDialog.this.m35528e();
                if (RewardDislikeDialog.this.f16250i != null) {
                    RewardDislikeDialog.this.f16250i.mo35524c(view);
                }
            }
        });
        TTDislikeListView tTDislikeListView = (TTDislikeListView) this.f16242a.findViewById(C5486x.m32066e(getContext(), "tt_filer_words_lv"));
        this.f16243b = tTDislikeListView;
        tTDislikeListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.3
            /* JADX WARN: Type inference failed for: r0v9, types: [android.widget.Adapter] */
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    FilterWord filterWord = (FilterWord) adapterView.getAdapter().getItem(i);
                    if (filterWord.hasSecondOptions()) {
                        RewardDislikeDialog.this.m35536a(filterWord);
                        if (RewardDislikeDialog.this.f16250i == null) {
                            return;
                        }
                        RewardDislikeDialog.this.f16250i.mo35527a(i, filterWord);
                        return;
                    }
                } catch (Throwable th) {
                }
                if (RewardDislikeDialog.this.f16250i != null) {
                    try {
                        RewardDislikeDialog.this.f16250i.mo35527a(i, RewardDislikeDialog.this.f16249h.m35226U().get(i));
                    } catch (Throwable th2) {
                    }
                }
                RewardDislikeDialog.this.m35533b();
            }
        });
        TTDislikeListView tTDislikeListView2 = (TTDislikeListView) this.f16242a.findViewById(C5486x.m32066e(getContext(), "tt_filer_words_lv_second"));
        this.f16244c = tTDislikeListView2;
        tTDislikeListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.4
            /* JADX WARN: Type inference failed for: r0v4, types: [android.widget.Adapter] */
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (RewardDislikeDialog.this.f16250i != null) {
                    try {
                        RewardDislikeDialog.this.f16250i.mo35527a(i, (FilterWord) adapterView.getAdapter().getItem(i));
                    } catch (Throwable th) {
                    }
                }
                RewardDislikeDialog.this.m35533b();
            }
        });
    }

    /* renamed from: e */
    public void m35528e() {
        RelativeLayout relativeLayout = this.f16245d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.f16246e;
        if (view != null) {
            view.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView = this.f16243b;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(0);
        }
        DialogC4854c.C4861b c4861b = this.f16248g;
        if (c4861b != null) {
            c4861b.m33720a();
        }
        TTDislikeListView tTDislikeListView2 = this.f16244c;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(8);
        }
    }

    /* renamed from: a */
    public void m35538a() {
        if (this.f16242a.getParent() == null) {
            addView(this.f16242a);
        }
        m35528e();
        setVisibility(0);
        this.f16251j = true;
        AbstractC4458a abstractC4458a = this.f16250i;
        if (abstractC4458a != null) {
            abstractC4458a.mo35526a(this);
        }
    }

    /* renamed from: b */
    public void m35533b() {
        setVisibility(8);
        this.f16251j = false;
        AbstractC4458a abstractC4458a = this.f16250i;
        if (abstractC4458a != null) {
            abstractC4458a.mo35525b(this);
        }
    }

    public void setCallback(AbstractC4458a abstractC4458a) {
        this.f16250i = abstractC4458a;
    }
}
