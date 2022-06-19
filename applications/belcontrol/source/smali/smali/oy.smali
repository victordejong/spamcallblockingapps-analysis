.class public final synthetic Loy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Loy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Loy;

    invoke-direct {v0}, Loy;-><init>()V

    sput-object v0, Loy;->a:Loy;

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

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Llz;->c(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    return-object p1
.end method
