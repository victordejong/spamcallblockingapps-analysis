.class final Lcom/google/android/gms/internal/measurement/aq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ek;


# static fields
.field static final a:Lcom/google/android/gms/internal/measurement/ek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/aq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/aq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/aq;->a:Lcom/google/android/gms/internal/measurement/ek;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .prologue
    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ao$h$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
