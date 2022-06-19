.class final enum Landroidx/fragment/app/z$b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/z$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/z$b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/z$b$b;

.field public static final enum GONE:Landroidx/fragment/app/z$b$b;

.field public static final enum INVISIBLE:Landroidx/fragment/app/z$b$b;

.field public static final enum REMOVED:Landroidx/fragment/app/z$b$b;

.field public static final enum VISIBLE:Landroidx/fragment/app/z$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 386
    new-instance v0, Landroidx/fragment/app/z$b$b;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/z$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/z$b$b;->REMOVED:Landroidx/fragment/app/z$b$b;

    .line 390
    new-instance v1, Landroidx/fragment/app/z$b$b;

    const-string v3, "VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/fragment/app/z$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    .line 394
    new-instance v3, Landroidx/fragment/app/z$b$b;

    const-string v5, "GONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/fragment/app/z$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/fragment/app/z$b$b;->GONE:Landroidx/fragment/app/z$b$b;

    .line 398
    new-instance v5, Landroidx/fragment/app/z$b$b;

    const-string v7, "INVISIBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/fragment/app/z$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/fragment/app/z$b$b;->INVISIBLE:Landroidx/fragment/app/z$b$b;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/fragment/app/z$b$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 382
    sput-object v7, Landroidx/fragment/app/z$b$b;->$VALUES:[Landroidx/fragment/app/z$b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static from(I)Landroidx/fragment/app/z$b$b;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 429
    sget-object p0, Landroidx/fragment/app/z$b$b;->GONE:Landroidx/fragment/app/z$b$b;

    return-object p0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown visibility "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1
    sget-object p0, Landroidx/fragment/app/z$b$b;->INVISIBLE:Landroidx/fragment/app/z$b$b;

    return-object p0

    .line 425
    :cond_2
    sget-object p0, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    return-object p0
.end method

.method static from(Landroid/view/View;)Landroidx/fragment/app/z$b$b;
    .locals 2

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 410
    sget-object p0, Landroidx/fragment/app/z$b$b;->INVISIBLE:Landroidx/fragment/app/z$b$b;

    return-object p0

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/z$b$b;->from(I)Landroidx/fragment/app/z$b$b;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/z$b$b;
    .locals 1

    .line 382
    const-class v0, Landroidx/fragment/app/z$b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/z$b$b;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/z$b$b;
    .locals 1

    .line 382
    sget-object v0, Landroidx/fragment/app/z$b$b;->$VALUES:[Landroidx/fragment/app/z$b$b;

    invoke-virtual {v0}, [Landroidx/fragment/app/z$b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/z$b$b;

    return-object v0
.end method


# virtual methods
.method final applyState(Landroid/view/View;)V
    .locals 4

    .line 441
    sget-object v0, Landroidx/fragment/app/z$3;->a:[I

    invoke-virtual {p0}, Landroidx/fragment/app/z$b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_6

    const-string v1, "SpecialEffectsController: Setting view "

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to INVISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to GONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v0, 0x8

    .line 464
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 453
    :cond_4
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 443
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 445
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SpecialEffectsController: Removing view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    :cond_7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_0
    return-void
.end method
