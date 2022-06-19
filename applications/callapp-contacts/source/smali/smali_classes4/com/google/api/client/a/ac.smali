.class public interface abstract Lcom/google/api/client/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/api/client/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/api/client/a/ac$1;

    invoke-direct {v0}, Lcom/google/api/client/a/ac$1;-><init>()V

    sput-object v0, Lcom/google/api/client/a/ac;->a:Lcom/google/api/client/a/ac;

    return-void
.end method


# virtual methods
.method public abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
