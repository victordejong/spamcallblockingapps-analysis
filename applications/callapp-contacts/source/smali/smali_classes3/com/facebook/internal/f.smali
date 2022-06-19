.class public abstract Lcom/facebook/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/facebook/internal/s;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/internal/f;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    .line 52
    invoke-static {p1, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/facebook/internal/f;->b:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/facebook/internal/f;->c:Lcom/facebook/internal/s;

    .line 55
    iput p2, p0, Lcom/facebook/internal/f;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/internal/s;I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fragmentWrapper"

    .line 59
    invoke-static {p1, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/facebook/internal/f;->c:Lcom/facebook/internal/s;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/facebook/internal/f;->b:Landroid/app/Activity;

    .line 62
    iput p2, p0, Lcom/facebook/internal/f;->d:I

    .line 1068
    iget-object p2, p1, Lcom/facebook/internal/s;->a:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    .line 1069
    iget-object p1, p1, Lcom/facebook/internal/s;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    .line 1071
    :cond_0
    iget-object p1, p1, Lcom/facebook/internal/s;->b:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot use a fragment that is not attached to an activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
