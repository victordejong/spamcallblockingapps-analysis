.class public Lscala/languageFeature$experimental$;
.super Ljava/lang/Object;
.source "languageFeature.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "experimental$"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/languageFeature$experimental$macros;,
        Lscala/languageFeature$experimental$macros$;
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$experimental$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$experimental$;

    invoke-direct {v0}, Lscala/languageFeature$experimental$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$experimental$;->MODULE$:Lscala/languageFeature$experimental$;

    return-void
.end method
