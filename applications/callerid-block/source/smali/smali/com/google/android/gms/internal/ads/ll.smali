.class final synthetic Lcom/google/android/gms/internal/ads/ll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ll;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ll;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ll;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "Pinged SB successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sl;->a(Ljava/lang/String;)V

    return-void
.end method
