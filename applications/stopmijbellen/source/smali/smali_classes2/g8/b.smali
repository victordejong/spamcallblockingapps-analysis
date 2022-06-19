.class public final synthetic Lg8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/api/AlarmJobIntentService;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/api/AlarmJobIntentService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/b;->a:Lcom/mglab/scm/api/AlarmJobIntentService;

    iput p2, p0, Lg8/b;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 4

    iget-object p1, p0, Lg8/b;->a:Lcom/mglab/scm/api/AlarmJobIntentService;

    iget v0, p0, Lg8/b;->b:I

    check-cast p2, Ls6/k;

    sget v1, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    new-array v1, p2, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/l;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    sget-object v1, Lh8/m;->g:Lx8/b;

    invoke-virtual {v3, v1, p2}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v1

    invoke-virtual {v1}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/l;

    if-eqz v1, :cond_0

    .line 5
    iget p2, v1, Lh8/l;->b:I

    :cond_0
    if-le p2, v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "lastlid"

    invoke-static {v0, v1, p2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/mglab/scm/api/AlarmJobIntentService;->i()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/4 p2, -0x3

    invoke-static {p2, p1}, Landroid/support/v4/media/b;->c(ILba/b;)Lba/b;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, ".uploadLog no result"

    .line 11
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/a;->l(Ljava/lang/String;ILba/b;)V

    :goto_0
    return-void
.end method
