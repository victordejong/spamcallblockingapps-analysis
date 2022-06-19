.class public final enum Lfa0$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfa0$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lfa0$h;

.field public static final enum d:Lfa0$h;

.field public static final enum f:Lfa0$h;

.field public static final enum g:Lfa0$h;

.field public static final enum h:Lfa0$h;

.field public static final enum j:Lfa0$h;

.field public static final enum k:Lfa0$h;

.field public static final synthetic l:[Lfa0$h;


# instance fields
.field public a:Lfa0$g;

.field public b:Lfa0$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lfa0$h;

    sget-object v1, Ld90;->a:Ld90;

    sget-object v2, Le90;->a:Le90;

    const-string v3, "None"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lfa0$h;-><init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V

    sput-object v0, Lfa0$h;->c:Lfa0$h;

    new-instance v1, Lfa0$h;

    sget-object v2, Laa0;->a:Laa0;

    sget-object v3, Lz90;->a:Lz90;

    const-string v5, "Fade"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lfa0$h;-><init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V

    sput-object v1, Lfa0$h;->d:Lfa0$h;

    new-instance v2, Lfa0$h;

    sget-object v3, Lr80;->a:Lr80;

    sget-object v5, Lw90;->a:Lw90;

    const-string v7, "Pop"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lfa0$h;-><init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V

    sput-object v2, Lfa0$h;->f:Lfa0$h;

    new-instance v3, Lfa0$h;

    sget-object v5, Lv90;->a:Lv90;

    sget-object v7, Lea0;->a:Lea0;

    const-string v9, "Fly"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lfa0$h;-><init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V

    sput-object v3, Lfa0$h;->g:Lfa0$h;

    new-instance v5, Lfa0$h;

    sget-object v7, Ly90;->a:Ly90;

    sget-object v9, Lx90;->a:Lx90;

    const-string v11, "Slide"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lfa0$h;-><init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V

    sput-object v5, Lfa0$h;->h:Lfa0$h;

    new-instance v7, Lfa0$h;

    sget-object v9, Lba0;->a:Lba0;

    sget-object v11, Lca0;->a:Lca0;

    const-string v13, "BrightnessSaturationFade"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lfa0$h;-><init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V

    sput-object v7, Lfa0$h;->j:Lfa0$h;

    new-instance v9, Lfa0$h;

    sget-object v11, Lda0;->a:Lda0;

    sget-object v13, Lq80;->a:Lq80;

    const-string v15, "ProgressWidth"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lfa0$h;-><init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V

    sput-object v9, Lfa0$h;->k:Lfa0$h;

    const/4 v11, 0x7

    new-array v11, v11, [Lfa0$h;

    aput-object v0, v11, v4

    aput-object v1, v11, v6

    aput-object v2, v11, v8

    aput-object v3, v11, v10

    aput-object v5, v11, v12

    const/4 v0, 0x5

    aput-object v7, v11, v0

    aput-object v9, v11, v14

    sput-object v11, Lfa0$h;->l:[Lfa0$h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILfa0$g;Lfa0$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa0$g;",
            "Lfa0$g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfa0$h;->a:Lfa0$g;

    iput-object p4, p0, Lfa0$h;->b:Lfa0$g;

    return-void
.end method

.method public static synthetic c()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic d()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfa0$h;
    .locals 1

    const-class v0, Lfa0$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfa0$h;

    return-object p0
.end method

.method public static values()[Lfa0$h;
    .locals 1

    sget-object v0, Lfa0$h;->l:[Lfa0$h;

    invoke-virtual {v0}, [Lfa0$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfa0$h;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lfa0$h;->a:Lfa0$g;

    invoke-interface {v0}, Lfa0$g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lfa0$h;->b:Lfa0$g;

    invoke-interface {v0}, Lfa0$g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
