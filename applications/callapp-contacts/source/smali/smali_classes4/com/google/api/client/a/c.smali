.class public interface abstract Lcom/google/api/client/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/api/client/a/c;

.field public static final b:Lcom/google/api/client/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/google/api/client/a/c$1;

    invoke-direct {v0}, Lcom/google/api/client/a/c$1;-><init>()V

    sput-object v0, Lcom/google/api/client/a/c;->a:Lcom/google/api/client/a/c;

    .line 68
    new-instance v0, Lcom/google/api/client/a/c$2;

    invoke-direct {v0}, Lcom/google/api/client/a/c$2;-><init>()V

    sput-object v0, Lcom/google/api/client/a/c;->b:Lcom/google/api/client/a/c;

    return-void
.end method


# virtual methods
.method public abstract a()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
