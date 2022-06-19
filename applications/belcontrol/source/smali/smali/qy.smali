.class public final synthetic Lqy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lqy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lqy;

    invoke-direct {v0}, Lqy;-><init>()V

    sput-object v0, Lqy;->a:Lqy;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lxy;

    invoke-static {p1}, Lez;->c(Lxy;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    return-object p1
.end method
