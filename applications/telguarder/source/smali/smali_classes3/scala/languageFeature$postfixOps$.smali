.class public Lscala/languageFeature$postfixOps$;
.super Ljava/lang/Object;
.source "languageFeature.scala"

# interfaces
.implements Lscala/languageFeature$postfixOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "postfixOps$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$postfixOps$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$postfixOps$;

    invoke-direct {v0}, Lscala/languageFeature$postfixOps$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$postfixOps$;->MODULE$:Lscala/languageFeature$postfixOps$;

    return-void
.end method
