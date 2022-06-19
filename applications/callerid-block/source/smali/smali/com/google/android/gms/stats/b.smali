.class final Lcom/google/android/gms/stats/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/gms/stats/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/stats/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/stats/b;->b:Lcom/google/android/gms/stats/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/stats/b;->b:Lcom/google/android/gms/stats/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/stats/a;->g(Lcom/google/android/gms/stats/a;I)V

    return-void
.end method
