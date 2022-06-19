.class public Ld5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld5/a;)V
    .locals 1

    const/4 p1, 0x3

    const-string v0, "FirebaseCrashlytics"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method
