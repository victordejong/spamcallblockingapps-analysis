.class final synthetic Lcom/google/firebase/heartbeatinfo/a;
.super Ljava/lang/Object;
.source "DefaultHeartBeatInfo.java"

# interfaces
.implements Lcom/google/firebase/k/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/k/b;
    .locals 1

    new-instance v0, Lcom/google/firebase/heartbeatinfo/a;

    invoke-direct {v0, p0}, Lcom/google/firebase/heartbeatinfo/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/heartbeatinfo/d;->d(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/f;

    move-result-object v0

    return-object v0
.end method
