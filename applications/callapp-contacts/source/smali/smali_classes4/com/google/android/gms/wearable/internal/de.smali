.class public final Lcom/google/android/gms/wearable/internal/de;
.super Lcom/google/android/gms/wearable/internal/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/wearable/internal/bk;"
    }
.end annotation


# instance fields
.field final a:[Landroid/content/IntentFilter;

.field final b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/bk;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/de;->a:[Landroid/content/IntentFilter;

    .line 19
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/de;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/internal/i;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/de;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/f$a;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/de<",
            "Lcom/google/android/gms/wearable/f$a;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/android/gms/wearable/internal/de;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/wearable/internal/de;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/i;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/de;->i:Lcom/google/android/gms/common/api/internal/i;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/internal/i;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/de;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/k$a;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/de<",
            "Lcom/google/android/gms/wearable/k$a;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/wearable/internal/de;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/de;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/i;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/de;->f:Lcom/google/android/gms/common/api/internal/i;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/i;->a()V

    :cond_0
    return-void
.end method

.method public static b(Lcom/google/android/gms/common/api/internal/i;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/de;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/f$a;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/de<",
            "Lcom/google/android/gms/wearable/f$a;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/wearable/internal/de;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/de;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/i;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/de;->i:Lcom/google/android/gms/common/api/internal/i;

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/common/api/internal/i;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/de;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/a$a;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/de<",
            "Lcom/google/android/gms/wearable/a$a;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/wearable/internal/de;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/de;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/i;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/de;->j:Lcom/google/android/gms/common/api/internal/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->c:Lcom/google/android/gms/common/api/internal/i;

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->d:Lcom/google/android/gms/common/api/internal/i;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/de;->e:Lcom/google/android/gms/common/api/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/de;->a(Lcom/google/android/gms/common/api/internal/i;)V

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->e:Lcom/google/android/gms/common/api/internal/i;

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/de;->f:Lcom/google/android/gms/common/api/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/de;->a(Lcom/google/android/gms/common/api/internal/i;)V

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->f:Lcom/google/android/gms/common/api/internal/i;

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->g:Lcom/google/android/gms/common/api/internal/i;

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->h:Lcom/google/android/gms/common/api/internal/i;

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/de;->i:Lcom/google/android/gms/common/api/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/de;->a(Lcom/google/android/gms/common/api/internal/i;)V

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->i:Lcom/google/android/gms/common/api/internal/i;

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/de;->j:Lcom/google/android/gms/common/api/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/de;->a(Lcom/google/android/gms/common/api/internal/i;)V

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->j:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->e:Lcom/google/android/gms/common/api/internal/i;

    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Lcom/google/android/gms/wearable/internal/df;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/df;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->a(Lcom/google/android/gms/common/api/internal/i$b;)V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzah;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->j:Lcom/google/android/gms/common/api/internal/i;

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Lcom/google/android/gms/wearable/internal/di;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/di;-><init>(Lcom/google/android/gms/wearable/internal/zzah;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->a(Lcom/google/android/gms/common/api/internal/i$b;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzaw;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->i:Lcom/google/android/gms/common/api/internal/i;

    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Lcom/google/android/gms/wearable/internal/dh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/dh;-><init>(Lcom/google/android/gms/wearable/internal/zzaw;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->a(Lcom/google/android/gms/common/api/internal/i$b;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzfe;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/de;->f:Lcom/google/android/gms/common/api/internal/i;

    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lcom/google/android/gms/wearable/internal/dg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/dg;-><init>(Lcom/google/android/gms/wearable/internal/zzfe;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->a(Lcom/google/android/gms/common/api/internal/i$b;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzfo;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzi;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzl;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/internal/zzfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/zzfo;)V
    .locals 0

    return-void
.end method
