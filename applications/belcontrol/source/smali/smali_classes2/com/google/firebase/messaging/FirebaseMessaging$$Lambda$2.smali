.class public final synthetic Lcom/google/firebase/messaging/FirebaseMessaging$$Lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field public static final $instance:Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/FirebaseMessaging$$Lambda$2;

    invoke-direct {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$$Lambda$2;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging$$Lambda$2;->$instance:Lcom/google/android/gms/tasks/Continuation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$getToken$2$FirebaseMessaging(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
