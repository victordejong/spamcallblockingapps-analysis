.class final Lcom/google/android/gms/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/c/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/c/c;->a:Lcom/google/android/gms/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/c/c;->a:Lcom/google/android/gms/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/c/a;->a(Lcom/google/android/gms/c/a;I)V

    .line 3
    return-void
.end method
