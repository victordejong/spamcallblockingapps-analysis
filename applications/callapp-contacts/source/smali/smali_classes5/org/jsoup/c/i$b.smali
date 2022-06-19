.class Lorg/jsoup/c/i$b;
.super Lorg/jsoup/c/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, v0}, Lorg/jsoup/c/i;-><init>(Lorg/jsoup/c/i$1;)V

    .line 316
    sget-object v0, Lorg/jsoup/c/i$i;->Character:Lorg/jsoup/c/i$i;

    iput-object v0, p0, Lorg/jsoup/c/i$b;->a:Lorg/jsoup/c/i$i;

    return-void
.end method


# virtual methods
.method final a()Lorg/jsoup/c/i;
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1331
    iget-object v0, p0, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    return-object v0
.end method
