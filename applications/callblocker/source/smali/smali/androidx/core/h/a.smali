.class public Landroidx/core/h/a;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/h/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private final b:Landroid/view/View$AccessibilityDelegate;

.field private final c:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/h/a;->a:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Landroidx/core/h/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, Landroidx/core/h/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    .line 148
    new-instance v0, Landroidx/core/h/a$a;

    invoke-direct {v0, p0}, Landroidx/core/h/a$a;-><init>(Landroidx/core/h/a;)V

    iput-object v0, p0, Landroidx/core/h/a;->c:Landroid/view/View$AccessibilityDelegate;

    .line 149
    return-void
.end method

.method private a(ILandroid/view/View;)Z
    .locals 2

    .prologue
    .line 364
    sget v0, Landroidx/core/a$c;->tag_accessibility_clickable_spans:I

    .line 366
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    .line 371
    invoke-direct {p0, v0, p2}, Landroidx/core/h/a;->a(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v0, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 373
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 381
    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/h/a/c;->d(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object v2

    move v1, v0

    .line 384
    :goto_0
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 385
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    const/4 v0, 0x1

    .line 390
    :cond_0
    return v0

    .line 384
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static b(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/h/a/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    sget v0, Landroidx/core/a$c;->tag_accessibility_actions:I

    .line 395
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 396
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroidx/core/h/a;->c:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public a(Landroid/view/View;)Landroidx/core/h/a/d;
    .locals 2

    .prologue
    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_0

    .line 321
    new-instance v0, Landroidx/core/h/a/d;

    invoke-direct {v0, v1}, Landroidx/core/h/a/d;-><init>(Ljava/lang/Object;)V

    .line 324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 174
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 196
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    .line 276
    invoke-virtual {p2}, Landroidx/core/h/a/c;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 275
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 277
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 344
    .line 345
    invoke-static {p1}, Landroidx/core/h/a;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 346
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 347
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/a/c$a;

    .line 348
    invoke-virtual {v0}, Landroidx/core/h/a/c$a;->a()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 349
    invoke-virtual {v0, p1, p3}, Landroidx/core/h/a/c$a;->a(Landroid/view/View;Landroid/os/Bundle;)Z

    move-result v0

    .line 353
    :goto_1
    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 354
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 356
    :cond_0
    if-nez v0, :cond_1

    sget v1, Landroidx/core/a$c;->accessibility_action_clickable_span:I

    if-ne p2, v1, :cond_1

    .line 357
    const-string/jumbo v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    const/4 v1, -0x1

    .line 358
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 357
    invoke-direct {p0, v0, p1}, Landroidx/core/h/a;->a(ILandroid/view/View;)Z

    move-result v0

    .line 360
    :cond_1
    return v0

    .line 346
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 237
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroidx/core/h/a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 257
    return-void
.end method
