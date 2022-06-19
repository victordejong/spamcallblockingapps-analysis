.class public abstract Lcom/flurry/sdk/ko;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.flurry.android.sdk.ReplaceMeWithAProperEventName"

    iput-object v0, p0, Lcom/flurry/sdk/ko;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/flurry/sdk/ko;->f:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Event must have a name!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ko;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/ko;)V

    return-void
.end method
