.class final Lcom/google/android/gms/common/api/internal/f$c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/d;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;",
            "Lcom/google/android/gms/common/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f$c;->a:Lcom/google/android/gms/common/api/internal/b;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/f$c;->b:Lcom/google/android/gms/common/d;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/api/internal/y;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/f$c;-><init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/f$c;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$c;->a:Lcom/google/android/gms/common/api/internal/b;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/f$c;)Lcom/google/android/gms/common/d;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$c;->b:Lcom/google/android/gms/common/d;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/f$c;

    if-eqz v1, :cond_0

    .line 6
    check-cast p1, Lcom/google/android/gms/common/api/internal/f$c;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f$c;->a:Lcom/google/android/gms/common/api/internal/b;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/f$c;->a:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f$c;->b:Lcom/google/android/gms/common/d;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/f$c;->b:Lcom/google/android/gms/common/d;

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 10
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/f$c;->a:Lcom/google/android/gms/common/api/internal/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/f$c;->b:Lcom/google/android/gms/common/d;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/f$c;->a:Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "feature"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/f$c;->b:Lcom/google/android/gms/common/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
