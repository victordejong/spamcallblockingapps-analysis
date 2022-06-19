.class public final Lcom/flurry/sdk/jo$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kp<",
        "Lcom/flurry/sdk/lt;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jo;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jo;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ko;)V
    .locals 8

    check-cast p1, Lcom/flurry/sdk/lt;

    iget-object v0, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    invoke-static {v0}, Lcom/flurry/sdk/jo;->a(Lcom/flurry/sdk/jo;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    iget-object v1, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    invoke-static {v1}, Lcom/flurry/sdk/jo;->a(Lcom/flurry/sdk/jo;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jo$8;->a:[I

    iget v1, p1, Lcom/flurry/sdk/lt;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    invoke-static {v1}, Lcom/flurry/sdk/jo;->b(Lcom/flurry/sdk/jo;)Lcom/flurry/sdk/kp;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/kq;->b(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    iget-object v0, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    iget-wide v1, p1, Lcom/flurry/sdk/lt;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/jo;->a(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    iget-object p1, p1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/jo;->c()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    iget-object p1, p1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/jo;->b()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/jo$9;->a:Lcom/flurry/sdk/jo;

    iget-object v3, p1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    iget-object p1, p1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/flurry/sdk/jo;->g:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v3

    const-string v4, "LogEvents"

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/flurry/sdk/jo;->k:Z

    invoke-virtual {v3, v4, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    sget-object v4, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initSettings, LogEvents = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/flurry/sdk/jo;->k:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "UserId"

    invoke-virtual {v3, v5}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/flurry/sdk/jo;->l:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initSettings, UserId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/flurry/sdk/jo;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "Gender"

    invoke-virtual {v3, v5}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    iput-byte v6, v0, Lcom/flurry/sdk/jo;->m:B

    invoke-virtual {v3, v5, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initSettings, Gender = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v6, v0, Lcom/flurry/sdk/jo;->m:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "Age"

    invoke-virtual {v3, v5}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v0, Lcom/flurry/sdk/jo;->n:Ljava/lang/Long;

    invoke-virtual {v3, v5, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initSettings, BirthDate = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/flurry/sdk/jo;->n:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "analyticsEnabled"

    invoke-virtual {v3, v5}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v0, Lcom/flurry/sdk/jo;->o:Z

    invoke-virtual {v3, v5, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, AnalyticsEnabled = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/flurry/sdk/jo;->o:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ".flurryagent."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/jo;->h:Ljava/io/File;

    new-instance v1, Lcom/flurry/sdk/kn;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ".yflurryreport."

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v6

    iget-object v6, v6, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/flurry/sdk/md;->i(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/flurry/sdk/jo$10;

    invoke-direct {v4, v0}, Lcom/flurry/sdk/jo$10;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-direct {v1, v3, v5, v2, v4}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    iput-object v1, v0, Lcom/flurry/sdk/jo;->i:Lcom/flurry/sdk/kn;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jo;->a(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jo;->a(Z)V

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object p1

    iget-object p1, p1, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/jo$11;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/jo$11;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_6
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/jo$12;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/jo$12;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/jo$13;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/jo$13;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/jt;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/jo$14;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/jo$14;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object p1

    iget-object v0, v0, Lcom/flurry/sdk/jo;->p:Lcom/flurry/sdk/kp;

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    return-void
.end method
