.class public Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.super Landroidx/appcompat/widget/e;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field private b:I

.field private c:Landroidx/appcompat/widget/SearchView;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1842
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1843
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1846
    sget v0, Landroidx/appcompat/a$a;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1847
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 1850
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1834
    new-instance v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;-><init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:Ljava/lang/Runnable;

    .line 1851
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b:I

    .line 1852
    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 4

    .prologue
    .line 1964
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1965
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1966
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1968
    const/16 v3, 0x3c0

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1970
    const/16 v0, 0x100

    .line 1974
    :goto_0
    return v0

    .line 1971
    :cond_0
    const/16 v0, 0x258

    if-ge v1, v0, :cond_1

    const/16 v0, 0x280

    if-lt v1, v0, :cond_2

    const/16 v0, 0x1e0

    if-lt v2, v0, :cond_2

    .line 1972
    :cond_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 1974
    :cond_2
    const/16 v0, 0xa0

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 1876
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1992
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Z

    if-eqz v0, :cond_0

    .line 1994
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1995
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1996
    iput-boolean v2, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Z

    .line 1998
    :cond_0
    return-void
.end method

.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1931
    iget v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/widget/e;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 1983
    invoke-super {p0, p1}, Landroidx/appcompat/widget/e;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1984
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Z

    if-eqz v1, :cond_0

    .line 1985
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1986
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    .line 1988
    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 1856
    invoke-super {p0}, Landroidx/appcompat/widget/e;->onFinishInflate()V

    .line 1857
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1858
    const/4 v1, 0x1

    .line 1859
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v2

    int-to-float v2, v2

    .line 1858
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 1860
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 1921
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/e;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1922
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->i()V

    .line 1923
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1936
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1939
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1940
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1941
    if-eqz v1, :cond_0

    .line 1942
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1957
    :cond_0
    :goto_0
    return v0

    .line 1945
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1946
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1947
    if-eqz v1, :cond_2

    .line 1948
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1950
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1951
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1952
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    goto :goto_0

    .line 1957
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/e;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1903
    invoke-super {p0, p1}, Landroidx/appcompat/widget/e;->onWindowFocusChanged(Z)V

    .line 1905
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1910
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Z

    .line 1913
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/SearchView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    sget-object v0, Landroidx/appcompat/widget/SearchView;->i:Landroidx/appcompat/widget/SearchView$a;

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1917
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1895
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1885
    return-void
.end method

.method setImeVisibility(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2001
    .line 2002
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2003
    if-nez p1, :cond_0

    .line 2004
    iput-boolean v2, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Z

    .line 2005
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2006
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2022
    :goto_0
    return-void

    .line 2010
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2013
    iput-boolean v2, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Z

    .line 2014
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2015
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 2021
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Z

    goto :goto_0
.end method

.method setSearchView(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Landroidx/appcompat/widget/SearchView;

    .line 1864
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 1868
    invoke-super {p0, p1}, Landroidx/appcompat/widget/e;->setThreshold(I)V

    .line 1869
    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b:I

    .line 1870
    return-void
.end method
