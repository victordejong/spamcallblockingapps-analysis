.class public Lscala/languageFeature$implicitConversions$;
.super Ljava/lang/Object;
.source "languageFeature.scala"

# interfaces
.implements Lscala/languageFeature$implicitConversions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "implicitConversions$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$implicitConversions$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$implicitConversions$;

    invoke-direct {v0}, Lscala/languageFeature$implicitConversions$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$implicitConversions$;->MODULE$:Lscala/languageFeature$implicitConversions$;

    return-void
.end method
