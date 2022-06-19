.class public final Lcom/google/api/services/gmail/Gmail$Users$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Delegates;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateVacation;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdatePop;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateLanguage;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateImap;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateAutoForwarding;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetVacation;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetPop;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetLanguage;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetImap;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetAutoForwarding;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .locals 0

    .line 4524
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->a:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
