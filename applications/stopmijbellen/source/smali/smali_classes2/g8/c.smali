.class public final synthetic Lg8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;
.implements Ld9/h$b;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/api/AlarmJobIntentService;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/api/AlarmJobIntentService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg8/c;->a:Lcom/mglab/scm/api/AlarmJobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lg8/c;->a:Lcom/mglab/scm/api/AlarmJobIntentService;

    check-cast p2, Ls6/k;

    sget v0, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lh8/q;->u()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lastblid"

    invoke-static {p2, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-virtual {p1}, Lcom/mglab/scm/api/AlarmJobIntentService;->g()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/4 p2, -0x3

    invoke-static {p2, p1}, Landroid/support/v4/media/b;->c(ILba/b;)Lba/b;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, ".uploadBL no result"

    .line 6
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/a;->l(Ljava/lang/String;ILba/b;)V

    :goto_0
    return-void
.end method

.method public f(Ld9/h;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lg8/c;->a:Lcom/mglab/scm/api/AlarmJobIntentService;

    sget p2, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    .line 1
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/e;

    const/4 v0, 0x1

    const-string v1, "Download not completed\nTransaction error"

    invoke-direct {p2, v1, v0}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/4 p2, -0x3

    invoke-static {p2, p1}, La6/d;->f(ILba/b;)V

    return-void
.end method
