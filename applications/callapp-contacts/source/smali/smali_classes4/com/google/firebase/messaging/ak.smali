.class final synthetic Lcom/google/firebase/messaging/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/firebase/messaging/aj;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/aj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/ak;->a:Lcom/google/firebase/messaging/aj;

    iput-object p2, p0, Lcom/google/firebase/messaging/ak;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/ak;->a:Lcom/google/firebase/messaging/aj;

    iget-object v1, p0, Lcom/google/firebase/messaging/ak;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/aj;->a(Ljava/lang/String;Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    return-object p1
.end method
