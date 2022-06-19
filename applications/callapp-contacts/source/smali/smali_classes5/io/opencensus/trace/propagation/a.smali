.class public abstract Lio/opencensus/trace/propagation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/propagation/a$a;,
        Lio/opencensus/trace/propagation/a$b;
    }
.end annotation


# static fields
.field private static final a:Lio/opencensus/trace/propagation/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lio/opencensus/trace/propagation/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/propagation/a$a;-><init>(Lio/opencensus/trace/propagation/a$1;)V

    sput-object v0, Lio/opencensus/trace/propagation/a;->a:Lio/opencensus/trace/propagation/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lio/opencensus/trace/q;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/q;",
            "TC;",
            "Lio/opencensus/trace/propagation/a$b<",
            "TC;>;)V"
        }
    .end annotation
.end method
