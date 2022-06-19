.class public final Lcom/google/android/gms/internal/appset/o;
.super Lcom/google/android/gms/common/api/c;
.source "com.google.android.gms:play-services-appset@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/appset/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/c<",
        "Lcom/google/android/gms/common/api/a$d$c;",
        ">;",
        "Lcom/google/android/gms/appset/b;"
    }
.end annotation


# static fields
.field private static final k:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/appset/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/appset/d;",
            "Lcom/google/android/gms/common/api/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/common/api/a$d$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final n:Landroid/content/Context;

.field private final o:Lcom/google/android/gms/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/appset/o;->k:Lcom/google/android/gms/common/api/a$g;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/appset/m;

    invoke-direct {v1}, Lcom/google/android/gms/internal/appset/m;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/appset/o;->l:Lcom/google/android/gms/common/api/a$a;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "AppSet.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/google/android/gms/internal/appset/o;->m:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/appset/o;->m:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->b:Lcom/google/android/gms/common/api/a$d$c;

    sget-object v2, Lcom/google/android/gms/common/api/c$a;->a:Lcom/google/android/gms/common/api/c$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/o;->n:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/appset/o;->o:Lcom/google/android/gms/common/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/appset/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/appset/o;->o:Lcom/google/android/gms/common/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/appset/o;->n:Landroid/content/Context;

    const v2, 0xcaf1200

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/c;->h(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/q;->a()Lcom/google/android/gms/common/api/internal/q$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/appset/f;->a:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q$a;->d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/q$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/appset/l;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/appset/l;-><init>(Lcom/google/android/gms/internal/appset/o;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q$a;->b(Lcom/google/android/gms/common/api/internal/m;)Lcom/google/android/gms/common/api/internal/q$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/q$a;->c(Z)Lcom/google/android/gms/common/api/internal/q$a;

    move-result-object v0

    const/16 v1, 0x6bd1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q$a;->e(I)Lcom/google/android/gms/common/api/internal/q$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q$a;->a()Lcom/google/android/gms/common/api/internal/q;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/c;->g(Lcom/google/android/gms/common/api/internal/q;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
