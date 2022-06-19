.class final synthetic Lcom/google/firebase/remoteconfig/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/g;


# static fields
.field private static final a:Lcom/google/firebase/remoteconfig/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/e;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/e;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/e;->a:Lcom/google/firebase/remoteconfig/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/tasks/g;
    .locals 1

    sget-object v0, Lcom/google/firebase/remoteconfig/e;->a:Lcom/google/firebase/remoteconfig/e;

    return-object v0
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;
    .locals 0

    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->d()Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
