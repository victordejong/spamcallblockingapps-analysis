.class public abstract Lio/opencensus/trace/propagation/a;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/propagation/a$b;,
        Lio/opencensus/trace/propagation/a$c;
    }
.end annotation


# static fields
.field private static final a:Lio/opencensus/trace/propagation/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/propagation/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/propagation/a$b;-><init>(Lio/opencensus/trace/propagation/a$a;)V

    sput-object v0, Lio/opencensus/trace/propagation/a;->a:Lio/opencensus/trace/propagation/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lio/opencensus/trace/m;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/m;",
            "TC;",
            "Lio/opencensus/trace/propagation/a$c<",
            "TC;>;)V"
        }
    .end annotation
.end method
