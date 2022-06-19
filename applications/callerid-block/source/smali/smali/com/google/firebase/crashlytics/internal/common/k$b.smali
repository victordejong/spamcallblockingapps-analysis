.class Lcom/google/firebase/crashlytics/internal/common/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/k;->k(Lcom/google/firebase/crashlytics/internal/settings/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/firebase/crashlytics/internal/settings/d;

.field final synthetic c:Lcom/google/firebase/crashlytics/internal/common/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/settings/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k$b;->c:Lcom/google/firebase/crashlytics/internal/common/k;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/k$b;->b:Lcom/google/firebase/crashlytics/internal/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k$b;->c:Lcom/google/firebase/crashlytics/internal/common/k;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/k$b;->b:Lcom/google/firebase/crashlytics/internal/settings/d;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/k;->a(Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/g;

    return-void
.end method
