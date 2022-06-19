.class final Lcom/dropbox/core/http/SSLConfig$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/SSLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:[Ljava/lang/String;

.field final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/dropbox/core/http/SSLConfig$a;->a:[Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lcom/dropbox/core/http/SSLConfig$a;->b:[Ljava/lang/String;

    return-void
.end method
