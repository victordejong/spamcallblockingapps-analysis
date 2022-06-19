.class public final synthetic Lsg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lag$b;


# static fields
.field public static final a:Lag$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsg;

    invoke-direct {v0}, Lsg;-><init>()V

    sput-object v0, Lsg;->a:Lag$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfh$b;)V
    .locals 0

    invoke-interface {p1}, Lfh$b;->onSeekProcessed()V

    return-void
.end method
