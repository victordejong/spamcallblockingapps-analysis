.class final Lcom/twitter/sdk/android/core/identity/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/twitter/sdk/android/core/identity/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/twitter/sdk/android/core/identity/b;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/b;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/identity/h$a;->a:Lcom/twitter/sdk/android/core/identity/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/twitter/sdk/android/core/identity/b;
    .locals 1

    .line 41
    sget-object v0, Lcom/twitter/sdk/android/core/identity/h$a;->a:Lcom/twitter/sdk/android/core/identity/b;

    return-object v0
.end method
