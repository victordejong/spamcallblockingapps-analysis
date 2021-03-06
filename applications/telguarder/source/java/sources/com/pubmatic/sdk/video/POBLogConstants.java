package com.pubmatic.sdk.video;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/POBLogConstants.class */
public class POBLogConstants {
    public static final String INFO_MSG_BID_EVENT_PROCEED_ON_ERROR = "Bid lost client side auction. Hence proceeding with error.";
    public static final String INFO_MSG_BID_EVENT_PROCEED_TO_LOAD = "Bid won client side auction. Hence proceeding to load.";
    public static final String MSG_AD_ALREADY_SHOWN_ERROR = "Ad is already shown.";
    public static final String MSG_AD_EXPIRED_ERROR = "Ad has expired.";
    public static final String MSG_AD_EXPIRED_PROCEEDING_IGNORING_OPENWRAP_BID = "Bid expired! Invoking ad server call by ignoring OpenWrap Bid.";
    public static final String MSG_AD_LOADED_ERROR = "Can't make new request. Please show already loaded ad before requesting a new one.";
    public static final String MSG_AD_LOADING_ERROR = "Can't make new request. Ad is loading.";
    public static final String MSG_AD_NOT_INITIALIZED = "Ad is either destroyed or not initialized. Please re-initialize.";
    public static final String MSG_AD_NOT_READY_ERROR = "Can't show ad. Ad is not ready.";
    public static final String MSG_AD_NOT_USED_ERROR = "Ad was never used to display";
    public static final String MSG_AD_OBJECT_INVALID = "Please check if you have provided valid details while constructing an Ad object";
    public static final String MSG_AD_WAITING_ERROR = "Can't make new request. Ad is waiting, perform action on bid event.";
    public static final String MSG_ATTACHING_ICON = "Attaching Icon to UI";
    public static final String MSG_BID_NOT_RECEIVED_WARNING = "Attempting to proceed before receiving bid";
    public static final String MSG_CONTAINER_VIEW_ERROOR = "Failed to create renderer container view.";
    public static final String MSG_DEBUG_BIDS_FAILED = "onBidsFailed : errorMessage= %s";
    public static final String MSG_DEBUG_BIDS_FETCHED = "onBidsFetched : ImpressionId=%s, BidPrice=%s";
    public static final String MSG_END_CARD_FOUND = "Suitable end-card found.";
    public static final String MSG_END_CARD_NETWORK_ERROR = "End-card failed to render due to network connectivity.";
    public static final String MSG_END_CARD_NO_SUPPORTED_RESOURCE = "No supported resource found for end-card.";
    public static final String MSG_END_CARD_RENDERING_ERROR = "End-card failed to render.";
    public static final String MSG_ERROR_HANDLER_ERROR_EMPTY_TRACKER_URLS = "Tracker url list is empty for vast error: %d";
    public static final String MSG_ERROR_HANDLER_ERROR_EXECUTING_TRACKER = "Skipped tracker execution for vast error: %d";
    public static final String MSG_ERROR_HANDLER_VAST_ERROR = "Vast error occurred: %s";
    public static final String MSG_EXPECTED_BIT_RATE = "Expected bitrate for %s resolution & %s network is %d";
    public static final String MSG_FMT_BID_EVENT_ERROR = "Notifying error through bid event delegate - %s";
    public static final String MSG_ICON_CLICKED = "Icon clicked.";
    public static final String MSG_ICON_LOADED = "Icon loaded.";
    public static final String MSG_ICON_MISSING_CLICKTHROUGH = "Icon clickThrough url is missing.";
    public static final String MSG_ICON_OPEN_LANDING_PAGE = "Opening landing page of icon with url: %s";
    public static final String MSG_ICON_RENDERING_FAILURE = "Unable to render Icon due to invalid details.";
    public static final String MSG_ICON_UNAVAILABLE_RESOURCE = "Icon resource is unavailable.";
    public static final String MSG_INVALID_BIDID = "bidId is invalid in onOpenWrapPartnerWin(), rendering the client-side winning bid";
    public static final String MSG_INVALID_ICON = "Either Icon is missing or it is invalid.";
    public static final String MSG_INVALID_REWARD_RECEIVED = "Received invalid reward values";
    public static final String MSG_MISSING_INPUT_PARAMS = "Missing ad request parameters. Please check input parameters.";
    public static final String MSG_MISSING_REWARDED_LISTENER = "POBRewardedAdListener is missing.";
    public static final String MSG_MISSING_REWARDED_RENDERER_LISTENER = "POBRewardedRendererListener is missing.";
    public static final String MSG_NO_ADS_AVAILABLE = "No ads available";
    public static final String MSG_NO_END_CARD = "No companion found as an end-card.";
    public static final String MSG_NO_MATCHING_END_CARD_FOUND = "Couldn't find suitable end-card.";
    public static final String MSG_NO_VAST_RESPONSE = "Empty vast ad received.";
    public static final String MSG_PROCEEDING_WITH_BID = "Proceeding with bid.";
    public static final String MSG_REMOVING_ICON = "Removing Icon from UI.";
    public static final String MSG_RENDERING_END_CARD = "Rendering end-card.";
    public static final String MSG_RENDERING_FAILED_ERROR = "Rendering failed for descriptor: ";
    public static final String MSG_RENDERING_ICON = "Rendering icon for program %s after offset %s for duration %s";
    public static final String MSG_RENDERING_ICON_FAILURE = "Failed to render icon.";
    public static final String MSG_RENDERING_ICON_FAILURE_NO_NETWORK = "Failed to render icon due to network connectivity issue.";
    public static final String MSG_RENDERING_LEARN_MORE = "Rendering Learn More button on end-card.";
    public static final String MSG_RENDERING_ON_START = "Rendering onStart";
    public static final String MSG_REWARDED_AD_SHOW_ERROR = "Can not show rewarded ad for descriptor: ";
    public static final String MSG_REWARDED_LISTENER_MISSING = "Received video event (%s) but RewardedAdListener is not set.";
    public static final String MSG_SCHEMA_VALIDATION_ERROR = "Ad tag URI is missing in wrapper vast response.";
    public static final String MSG_SELECTED_MEDIAL_FILE = "Selected media file: %s from media files: %s, for bitrate: %d & size: %s & supported mimes: %s";
    public static final String MSG_SENDING_DEFAULT_REWARD = "No Rewards Received. Hence,creating new Reward object with default values.";
    public static final String MSG_SHOW_REWARDED_AD = "Show rewarded ad";
    public static final String MSG_SKIPPING_AD = "Skipping ad.";
    public static final String MSG_UNSUPPORTED_VAST_VERSION = "Received vast version is unsupported.";
    public static final String MSG_VAST_ENDCARD_MISSING_CLICKTHROUGH = "Companion clickThrough url is missing.";
    public static final String MSG_VAST_LEARN_MORE_CLICKED = "Opening landing page with url: %s";
    public static final String MSG_VAST_PLAYER_DESTROY = "Vast player destroy called!";
    public static final String MSG_VAST_PLAYER_END_CARD_CLICK = "Opening end-card landing page with url: %s";
    public static final String MSG_VAST_PLAYER_EXECUTE_TRACKER_EVENT = "Event occurred: %s";
    public static final String MSG_VAST_PLAYER_LINEARITY_NOT_FOUND = "Expected linearity not found.";
    public static final String MSG_VAST_PLAYER_LINEAR_MEDIA_NOT_FOUND = "Media file not found for linear ad.";
    public static final String MSG_VAST_PLAYER_LINEAR_MEDIA_NOT_SUPPORTED = "No supported media file found for linear ad.";
    public static final String MSG_VAST_PLAYER_NO_CREATIVE = "No ad creative found.";
    public static final String MSG_VAST_PLAYER_RENDERING_STARTED = "Vast player started rendering.";
    public static final String MSG_VAST_PLAYER_SKIP_OFFSET = "Video duration: %s seconds, skip option will be available after %s seconds.";
    public static final String MSG_VAST_PLAYER_VIDEO_PLAYER_PAUSED = "Playback paused.";
    public static final String MSG_VAST_PLAYER_VIDEO_PLAYER_PLAY = "Playback started.";
    public static final String MSG_VAST_PLAYER_VIDEO_PLAYER_STOPPED = "Playback stopped.";
    public static final String MSG_VAST_SELECTED_MEDIA_FILE = "Selected media file: %s";
    public static final String MSG_VAST_VIDEO_MISSING_CLICKTHROUGH = "Video clickThrough url is missing.";
    public static final String MSG_WRAPPER_THRESHOLD = "Maximum wrapper attempts reached.";
    public static final String MSG_XML_PARSING_ERROR = "Failed to parse vast response.";
    public static final String WARN_MSG_BID_EVENT_INVALID_STATE = "Can not proceed before calling loadAd() or already in the process of proceed.";
    public static final String WARN_MSG_BID_EVENT_NOT_IMPLEMENTED = "'POBBidEventListener' not implemented";
}
