.class final Lcom/facebook/internal/o$1;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.java"

# interfaces
.implements Lcom/android/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/o;->b(Lcom/facebook/internal/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/a/a/a;

.field final synthetic b:Lcom/facebook/internal/o$a;


# direct methods
.method constructor <init>(Lcom/android/a/a/a;Lcom/facebook/internal/o$a;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/facebook/internal/o$1;->a:Lcom/android/a/a/a;

    iput-object p2, p0, Lcom/facebook/internal/o$1;->b:Lcom/facebook/internal/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 53
    :goto_0
    :pswitch_0
    return-void

    .line 35
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/o$1;->a:Lcom/android/a/a/a;

    invoke-virtual {v0}, Lcom/android/a/a/a;->a()Lcom/android/a/a/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    const-string/jumbo v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/o$1;->b:Lcom/facebook/internal/o$a;

    invoke-interface {v1, v0}, Lcom/facebook/internal/o$a;->a(Ljava/lang/String;)V

    .line 44
    :cond_1
    invoke-static {}, Lcom/facebook/internal/o;->a()V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-static {}, Lcom/facebook/internal/o;->a()V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
