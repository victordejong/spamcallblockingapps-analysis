.class public final Lcom/google/android/gms/stats/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/stats/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/stats/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/stats/c;->a:Lcom/google/android/gms/stats/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/stats/c;->a:Lcom/google/android/gms/stats/a;

    invoke-static {v0}, Lcom/google/android/gms/stats/a;->a(Lcom/google/android/gms/stats/a;)V

    return-void
.end method
