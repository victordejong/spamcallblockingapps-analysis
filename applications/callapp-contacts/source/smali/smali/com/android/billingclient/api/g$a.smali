.class public final Lcom/android/billingclient/api/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/g;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/g;

    invoke-direct {v0}, Lcom/android/billingclient/api/g;-><init>()V

    iget v1, p0, Lcom/android/billingclient/api/g$a;->a:I

    .line 1000
    iput v1, v0, Lcom/android/billingclient/api/g;->a:I

    .line 1
    iget-object v1, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 2000
    iput-object v1, v0, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    return-object v0
.end method
