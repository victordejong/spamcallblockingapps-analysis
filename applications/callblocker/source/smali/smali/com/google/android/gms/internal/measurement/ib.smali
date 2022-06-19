.class public final Lcom/google/android/gms/internal/measurement/ib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/by;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/by",
        "<",
        "Lcom/google/android/gms/internal/measurement/ia;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/measurement/ib;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/ia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/ib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ib;->a:Lcom/google/android/gms/internal/measurement/ib;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/id;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ib;-><init>(Lcom/google/android/gms/internal/measurement/by;)V

    .line 7
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/ia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/by;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ib;->b:Lcom/google/android/gms/internal/measurement/by;

    .line 5
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ib;->a:Lcom/google/android/gms/internal/measurement/ib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ib;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    move-result v0

    return v0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/ib;->a:Lcom/google/android/gms/internal/measurement/ib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ib;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ia;->b()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ib;->b:Lcom/google/android/gms/internal/measurement/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/by;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ia;

    .line 10
    return-object v0
.end method
