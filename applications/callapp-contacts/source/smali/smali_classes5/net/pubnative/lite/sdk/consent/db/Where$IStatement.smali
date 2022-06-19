.class public interface abstract Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/db/Where;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStatement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008`\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0015\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0004H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
        "",
        "getArgs",
        "",
        "",
        "()[Ljava/lang/String;",
        "getStatementString",
        "Companion",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->$$INSTANCE:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    return-void
.end method


# virtual methods
.method public abstract getArgs()[Ljava/lang/String;
.end method

.method public abstract getStatementString()Ljava/lang/String;
.end method
