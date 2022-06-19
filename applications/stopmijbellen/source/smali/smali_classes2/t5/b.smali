.class public final synthetic Lt5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr5/f;


# static fields
.field public static final synthetic a:Lt5/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lt5/b;

    invoke-direct {v0}, Lt5/b;-><init>()V

    sput-object v0, Lt5/b;->a:Lt5/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lr5/g;

    sget-object v0, Lt5/e;->e:Lt5/e$a;

    .line 1
    invoke-interface {p2, p1}, Lr5/g;->d(Ljava/lang/String;)Lr5/g;

    return-void
.end method
