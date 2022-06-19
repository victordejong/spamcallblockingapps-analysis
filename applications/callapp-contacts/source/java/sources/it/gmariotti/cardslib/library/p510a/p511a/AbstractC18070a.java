package it.gmariotti.cardslib.library.p510a.p511a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* renamed from: it.gmariotti.cardslib.library.a.a.a */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/a/a.class */
public abstract class AbstractC18070a {
    protected AbstractC18152a mCardView;
    protected Context mContext;
    protected View mInnerView;
    protected C18073b mParentCard;
    protected String mTitle;
    protected int mInnerLayout = -1;
    protected String mId = null;
    protected int type = 0;

    public AbstractC18070a(Context context) {
        this.mContext = context;
    }

    public AbstractC18152a getCardView() {
        return this.mCardView;
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getId() {
        return this.mId;
    }

    public int getInnerLayout() {
        return this.mInnerLayout;
    }

    public View getInnerView(Context context, ViewGroup viewGroup) {
        if (this.mInnerLayout >= 0) {
            View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(this.mInnerLayout, viewGroup, false);
            this.mInnerView = inflate;
            return inflate;
        }
        return null;
    }

    public C18073b getParentCard() {
        return this.mParentCard;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public int getType() {
        return this.type;
    }

    public void setCardView(AbstractC18152a abstractC18152a) {
        this.mCardView = abstractC18152a;
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void setInnerLayout(int i) {
        this.mInnerLayout = i;
    }

    public void setParentCard(C18073b c18073b) {
        this.mParentCard = c18073b;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public void setType(int i) {
        this.type = i;
    }
}
