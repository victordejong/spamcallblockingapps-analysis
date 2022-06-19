.class public interface abstract Lcom/bumptech/glide/load/i/h;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lcom/bumptech/glide/load/i/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/i/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/i/h$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/i/h$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/i/h;->a:Lcom/bumptech/glide/load/i/h;

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/i/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/i/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/i/j$a;->a()Lcom/bumptech/glide/load/i/j;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/i/h;->b:Lcom/bumptech/glide/load/i/h;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
