.class final synthetic Lcom/google/firebase/iid/ao;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# static fields
.field static final a:Lcom/google/android/gms/tasks/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/ao;

    invoke-direct {v0}, Lcom/google/firebase/iid/ao;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/ao;->a:Lcom/google/android/gms/tasks/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/firebase/iid/b;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
