.class public final synthetic Lcom/google/android/gms/internal/appset/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/appset/q;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/appset/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/p;->a:Lcom/google/android/gms/internal/appset/q;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/appset/p;->a:Lcom/google/android/gms/internal/appset/q;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/appset/q;->b(Lcom/google/android/gms/internal/appset/q;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
