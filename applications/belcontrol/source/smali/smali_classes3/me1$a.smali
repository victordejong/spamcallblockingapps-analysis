.class public Lme1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lna1$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme1;->i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lme1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Loa1;)V
    .locals 2

    invoke-static {}, Lme1;->a()Lna1;

    move-result-object v0

    invoke-virtual {v0}, Lna1;->g()V

    invoke-virtual {p1}, Loa1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem setting up In-app Billing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm91$c;->j:Lm91$c;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lme1$d;

    invoke-direct {p1}, Lme1$d;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
