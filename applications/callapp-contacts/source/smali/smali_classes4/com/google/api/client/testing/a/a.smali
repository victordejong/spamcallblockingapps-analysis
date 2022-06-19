.class public final Lcom/google/api/client/testing/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/api/client/http/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/api/client/http/i;

    const-string v1, "http://google.com/"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/testing/a/a;->a:Lcom/google/api/client/http/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
