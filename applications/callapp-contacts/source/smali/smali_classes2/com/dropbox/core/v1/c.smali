.class public final Lcom/dropbox/core/v1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/dropbox/core/v1/DbxUrlWithExpiration$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxUrlWithExpiration$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/c;->c:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dropbox/core/v1/c;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/dropbox/core/v1/c;->b:Ljava/util/Date;

    return-void
.end method
