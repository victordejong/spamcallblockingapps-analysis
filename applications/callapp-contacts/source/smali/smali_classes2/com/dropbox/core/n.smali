.class public final Lcom/dropbox/core/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/dropbox/core/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/a/c<",
            "Lcom/dropbox/core/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/dropbox/core/n$1;

    invoke-direct {v0}, Lcom/dropbox/core/n$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/n;->a:Lcom/dropbox/core/a/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "text"

    .line 30
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "locale"

    .line 33
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/dropbox/core/n;->b:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/dropbox/core/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dropbox/core/n;->b:Ljava/lang/String;

    return-object v0
.end method
