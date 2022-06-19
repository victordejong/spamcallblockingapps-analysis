.class public Lsf1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrf1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsf1$a;
    }
.end annotation


# instance fields
.field public final a:Lvf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf1<",
            "+",
            "Lpf1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmf1;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lre1;Lmf1;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lsf1;->b:Lmf1;

    invoke-interface {p3}, Lmf1;->b()Z

    move-result v0

    const-string v1, "MoatWebAdTracker"

    if-eqz v0, :cond_0

    const-string v0, "In initialization method."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    invoke-interface {p3}, Lmf1;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "WebView is null. Will not track."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v6, Lqf1;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lqf1;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLre1;Lmf1;)V

    invoke-static {v6}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lsf1;->a:Lvf1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-object v0, p0, Lsf1;->b:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    const-string v1, "MoatWebAdTracker"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v3, "In track method."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lsf1;->a:Lvf1;

    invoke-virtual {v3}, Lvf1;->c()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    const-string v3, "Internal tracker not available. Not tracking."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lsf1;->a:Lvf1;

    invoke-virtual {v3}, Lvf1;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpf1;

    invoke-interface {v3}, Lpf1;->a()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Luf1;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to start tracking ad was "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    const-string v3, "un"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "successful."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method
